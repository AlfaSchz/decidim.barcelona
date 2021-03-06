require 'rails_helper'

feature 'SMS Verification' do

  scenario 'Verify' do
    user = create(:user, residence_verified_at: Time.now)
    login_as(user)

    visit new_sms_path

    fill_in 'sms_phone', with: "611111111"
    click_button 'Send'

    expect(page).to have_content 'Confirmation code'

    user = user.reload
    fill_in 'sms_confirmation_code', with: user.sms_confirmation_code
    click_button 'Send'

    expect(page).to have_content 'Code correct'
  end

  scenario 'Errors on phone number' do
    user = create(:user, residence_verified_at: Time.now)
    login_as(user)

    visit new_sms_path

    click_button 'Send'

    expect(page).to have_content error_message
  end

  scenario 'Errors on verification code' do
    user = create(:user, residence_verified_at: Time.now)
    login_as(user)

    visit new_sms_path

    fill_in 'sms_phone', with: "611111111"
    click_button 'Send'

    expect(page).to have_content 'Confirmation text message'

    click_button 'Send'

    expect(page).to have_content 'Incorrect confirmation code'
  end

  scenario 'Deny access unless residency verified' do
    user = create(:user)
    login_as(user)

    visit new_sms_path

    expect(page).to have_content 'must be registered'
    expect(current_path).to eq(new_residence_path)
  end

  scenario '5 tries allowed' do
    user = create(:user, residence_verified_at: Time.now)
    login_as(user)

    visit new_sms_path

    5.times do
      fill_in 'sms_phone', with: "611111111"
      click_button 'Send'
      click_link 'Request a new code'
    end

    expect(page).to have_content "You have reached the maximum number of attempts. Please try again later."
    expect(current_path).to eq(account_path)

    visit new_sms_path
    expect(page).to have_content "You have reached the maximum number of attempts. Please try again later."
    expect(current_path).to eq(account_path)
  end

end
