require 'rails_helper'
include ActionView::Helpers::DateHelper

feature 'Commenting debates', :js do
  let(:participatory_process) { create(:participatory_process) }
  let!(:user)   { create :user }
  let!(:debate) { create(:debate, participatory_process: participatory_process) }

  scenario 'Index' do
    3.times { create(:comment, commentable: debate) }

    visit debate_path(debate, participatory_process_id: debate.
                              participatory_process, step_id: participatory_process.active_step)

    expect(page).to have_css('.comment', count: 3)

    comment = Comment.last
    within first('.comment') do
      expect(page).to have_content comment.user.name
      expect(page).to have_content I18n.l(comment.created_at, format: :datetime)
      expect(page).to have_content comment.body
    end
  end

  scenario 'Comment order' do
    c1 = create(:comment, :with_confidence_score, commentable: debate, cached_votes_up: 100, cached_votes_total: 120, created_at: Time.now - 2)
    c2 = create(:comment, :with_confidence_score, commentable: debate, cached_votes_up: 10, cached_votes_total: 12, created_at: Time.now - 1)
    c3 = create(:comment, :with_confidence_score, commentable: debate, cached_votes_up: 1, cached_votes_total: 2, created_at: Time.now)

    visit debate_path(debate, participatory_process_id: debate.
                              participatory_process, step_id: participatory_process.active_step)

    expect(page).to have_css(".comment", count: 3)

    expect(c1.body).to appear_before(c2.body)
    expect(c2.body).to appear_before(c3.body)

    select 'Newest first', from: 'comments-order-selector'
    expect(page).to have_css(".comment", count: 3)

    expect(c3.body).to appear_before(c2.body)
    expect(c2.body).to appear_before(c1.body)

    select 'Oldest first', from: 'comments-order-selector'
    expect(page).to have_css(".comment", count: 3)

    expect(c1.body).to appear_before(c2.body)
    expect(c2.body).to appear_before(c3.body)
  end

  scenario 'Creation date works differently in roots and in child comments, even when sorting by confidence_score' do
    old_root = create(:comment, commentable: debate, created_at: Time.now - 10)
    new_root = create(:comment, commentable: debate, created_at: Time.now)
    old_child = create(:comment, commentable: debate, parent_id: new_root.id, created_at: Time.now - 10)
    new_child = create(:comment, commentable: debate, parent_id: new_root.id, created_at: Time.now)

    visit debate_path(debate, participatory_process_id: debate.
                              participatory_process, step_id: participatory_process.active_step)

    expect(page).to have_css(".comment", count: 4)

    expect(new_root.body).to appear_before(old_root.body)
    expect(new_child.body).to appear_before(old_child.body)

    select 'Newest first', from: 'comments-order-selector'
    expect(page).to have_css(".comment", count: 4)

    expect(new_root.body).to appear_before(old_root.body)
    expect(new_child.body).to appear_before(old_child.body)

    select 'Oldest first', from: 'comments-order-selector'
    expect(page).to have_css(".comment", count: 4)

    expect(old_root.body).to appear_before(new_root.body)
    expect(old_child.body).to appear_before(new_child.body)
  end

  scenario 'Turns links into html links' do
    comment = create :comment, commentable: debate, body: 'Built with http://rubyonrails.org/'

    visit debate_path(debate, participatory_process_id: debate.
                              participatory_process, step_id: participatory_process.active_step)

    expect(page).to have_css("#comment_#{comment.id}")

    within first('.comment') do
      expect(page).to have_content 'Built with http://rubyonrails.org/'
      expect(page).to have_link('http://rubyonrails.org/', href: 'http://rubyonrails.org/')
      expect(find_link('http://rubyonrails.org/')[:rel]).to eq('nofollow')
      expect(find_link('http://rubyonrails.org/')[:target]).to eq('_blank')
    end
  end

  scenario 'Sanitizes comment body for security' do
    comment = create :comment, commentable: debate, body: "<script>alert('hola')</script> <a href=\"javascript:alert('sorpresa!')\">click me<a/> http://madrid.es"

    visit debate_path(debate, participatory_process_id: debate.
                              participatory_process, step_id: participatory_process.active_step)

    expect(page).to have_css("#comment_#{comment.id}")

    within first('.comment') do
      expect(page).to have_content "click me http://madrid.es"
      expect(page).to have_link('http://madrid.es', href: 'http://madrid.es')
      expect(page).not_to have_link('click me')
    end
  end

  feature 'Not logged user' do
    scenario 'can not see comments forms' do
      create(:comment, commentable: debate)
      visit debate_path(debate, participatory_process_id: debate.
                                participatory_process, step_id: participatory_process.active_step)

      expect(page).to have_content 'You must Sign in or Sign up to leave a comment'
      within('.comments') do
        expect(page).to_not have_content 'Write a comment'
        expect(page).to_not have_content 'Reply'
      end
    end
  end

  scenario 'Create a comment' do
    login_as(user)
    visit debate_path(debate, participatory_process_id: debate.
                              participatory_process, step_id: participatory_process.active_step)

    fill_in "comment-body-root", with: 'Have you thought about...?'
    click_button 'Publish comment'

    within ".comments" do
      expect(page).to have_content 'Have you thought about...?'
    end
  end

  scenario 'Reply' do
    citizen = create(:user, username: 'Ana')
    manuela = create(:user, username: 'Manuela')
    comment = create(:comment, commentable: debate, user: citizen)

    login_as(manuela)
    visit debate_path(debate, participatory_process_id: debate.
                              participatory_process, step_id: participatory_process.active_step)

    expect(page).not_to have_css('.comments .loading-component')
    page.find('a.comment__reply').click

    within "#comment_#{comment.id}" do
      fill_in "comment-body-#{comment.id}", with: 'It will be done next week.'
      click_button 'Publish reply'
      expect(page).to have_content 'It will be done next week.'
    end

    expect(page).to_not have_selector("#comment_#{comment.id} .new_comment")
  end

  scenario "N replies" do
    parent = create(:comment, commentable: debate)

    7.times do
      create(:comment, commentable: debate, parent: parent)
      parent = parent.children.first
    end

    visit debate_path(debate, participatory_process_id: debate.
                              participatory_process, step_id: participatory_process.active_step)
    expect(page).not_to have_css('.loading-component')
    expect(page).to have_css('.comments .comment', count: 8)
  end

  scenario "Flagging as inappropriate" do
    comment = create(:comment, commentable: debate)

    login_as(user)
    visit debate_path(debate, participatory_process_id: debate.
                              participatory_process, step_id: participatory_process.active_step)

    within "#comment_#{comment.id}" do
      page.find("#flag-action-#{comment.id}").click
      expect(page).to have_css("#unflag-action-#{comment.id}")
    end

    expect(Flag.flagged?(user, comment)).to be
  end

  scenario "Undoing flagging as inappropriate" do
    comment = create(:comment, commentable: debate)
    Flag.flag(user, comment)

    login_as(user)
    visit debate_path(debate, participatory_process_id: debate.
                              participatory_process, step_id: participatory_process.active_step)

    within "#comment_#{comment.id}" do
      page.find("#unflag-action-#{comment.id}").click
      expect(page).to have_css("#flag-action-#{comment.id}")
    end

    expect(Flag.flagged?(user, comment)).to_not be
  end

  scenario "Flagging turbolinks sanity check" do
    debate = create(:debate, participatory_process: participatory_process, title: "Should we change the world?")
    comment = create(:comment, commentable: debate)

    login_as(user)
    visit debates_path(participatory_process_id: participatory_process,
                       step_id: participatory_process.active_step)

    click_link "Should we change the world?"

    within "#comment_#{comment.id}" do
      page.find("#flag-action-#{comment.id}").click
      expect(page).to have_selector("#unflag-action-#{comment.id}")
    end
  end

  scenario "Erasing a comment's author" do
    debate = create(:debate, participatory_process: participatory_process)
    comment = create(:comment, commentable: debate, body: 'this should be visible')
    comment.user.erase

    visit debate_path(debate, participatory_process_id: debate.
                              participatory_process, step_id: participatory_process.active_step)
    within "#comment_#{comment.id}" do
      expect(page).to have_content('User deleted')
      expect(page).to have_content('this should be visible')
    end
  end

  feature "Moderators" do
    scenario "can create comment as a moderator" do
      moderator = create(:moderator)

      login_as(moderator)
      visit debate_path(debate, participatory_process_id: debate.
                                participatory_process, step_id: participatory_process.active_step)

      fill_in "comment-body-root", with: "I am moderating!"
      check "comment-as-moderator-root"
      click_button "Publish comment"

      within ".comments" do
        expect(page).to have_content "I am moderating!"
        expect(page).to have_content "Moderator ##{moderator.id}"
        # expect(page).to have_css "img.moderator-avatar"
      end
    end

    scenario "can create reply as a moderator" do
      moderator = create(:moderator)
      comment = create(:comment, commentable: debate)

      login_as(moderator)
      visit debate_path(debate, participatory_process_id: debate.
                                participatory_process, step_id: participatory_process.active_step)

      expect(page).to have_css("#comment_#{comment.id}")
      page.find('a.comment__reply').click

      within "#comment_#{comment.id}" do
        fill_in "comment-body-#{comment.id}", with: "I am moderating!"
        check "comment-as-moderator-#{comment.id}"
        click_button 'Publish reply'
      end

      within "#comment_#{comment.id}" do
        expect(page).to have_content "I am moderating!"
        expect(page).to have_content "Moderator ##{moderator.id}"
        # expect(page).to have_css "img.moderator-avatar"
      end

      expect(page).to_not have_selector("#comment_#{comment.id} .new_comment")
    end

    scenario "can not comment as an administrator" do
      moderator = create(:moderator)

      login_as(moderator)
      visit debate_path(debate, participatory_process_id: debate.
                                participatory_process, step_id: participatory_process.active_step)

      expect(page).to_not have_content "Comment as administrator"
    end
  end

  feature "Administrators" do
    scenario "can create comment as an administrator" do
      admin = create(:administrator)

      login_as(admin)
      visit debate_path(debate, participatory_process_id: debate.
                                participatory_process, step_id: participatory_process.active_step)

      fill_in "comment-body-root", with: "I am your Admin!"
      check "comment-as-administrator-root"
      click_button "Publish comment"

      within ".comments" do
        expect(page).to have_content "I am your Admin!"
        expect(page).to have_content "Administrator ##{admin.id}"
        # expect(page).to have_css "img.admin-avatar"
      end
    end

    scenario "can create reply as an administrator" do
      citizen = create(:user, username: "Ana")
      admin = create(:administrator, username: "Manuela")
      comment = create(:comment, commentable: debate, user: citizen)

      login_as(admin)
      visit debate_path(debate, participatory_process_id: debate.
                                participatory_process, step_id: participatory_process.active_step)

      expect(page).to have_css("#comment_#{comment.id}")
      page.find('a.comment__reply').click

      within "#comment_#{comment.id}" do
        fill_in "comment-body-#{comment.id}", with: "Top of the world!"
        check "comment-as-administrator-#{comment.id}"
        click_button 'Publish reply'
      end

      within "#comment_#{comment.id}" do
        expect(page).to have_content "Top of the world!"
        expect(page).to have_content "Administrator ##{admin.id}"
        # expect(page).to have_css "img.admin-avatar"
      end

      expect(page).to_not have_selector("#js-comment-form-comment_#{comment.id}", visible: true)
    end

    scenario "can not comment as a moderator" do
      admin  = create(:administrator)

      login_as(admin)
      visit debate_path(debate, participatory_process_id: debate.
                                participatory_process, step_id: participatory_process.active_step)

      expect(page).to_not have_content "Comment as moderator"
    end
  end

  feature 'Voting comments' do
    background do
      @manuela = create(:user, verified_at: Time.now)
      @pablo = create(:user)
      @debate = create(:debate, participatory_process: participatory_process)
      @comment = create(:comment, commentable: @debate)

      login_as(@manuela)
    end

    scenario 'Show' do
      create(:vote, voter: @manuela, votable: @comment, vote_flag: true)
      create(:vote, voter: @pablo, votable: @comment, vote_flag: false)

      visit debate_path(@debate, participatory_process_id: @debate.
                                 participatory_process, step_id: participatory_process.active_step)

      within("#comment_#{@comment.id}_votes") do
        find(".comment__votes--up", text: "1")
        find(".comment__votes--down", text: "1")
      end
    end

    scenario 'Create' do
      visit debate_path(@debate, participatory_process_id: @debate.
                                 participatory_process, step_id: participatory_process.active_step)

      within("#comment_#{@comment.id}_votes") do
        find(".comment__votes--up").click

        find(".comment__votes--up", text: "1")
        find(".comment__votes--down", text: "0")
      end
    end

    scenario 'Update' do
      visit debate_path(@debate, participatory_process_id: @debate.
                                 participatory_process, step_id: participatory_process.active_step)

      within("#comment_#{@comment.id}_votes") do
        find('.comment__votes--up').click
        find('.comment__votes--down').click

        find(".comment__votes--up", text: "0")
        find(".comment__votes--down", text: "1")
      end
    end

    scenario 'Trying to vote multiple times' do
      visit debate_path(@debate, participatory_process_id: @debate.
                                 participatory_process, step_id: participatory_process.active_step)

      within("#comment_#{@comment.id}_votes") do
        find('.comment__votes--up').click
        find(".comment__votes--up", text: "1")

        find('.comment__votes--up').click
        within('.comment__votes--up') do
          expect(page).to_not have_content "2"
          expect(page).to have_content "1"
        end

        find(".comment__votes--down", text: "0")
      end
    end
  end

end
