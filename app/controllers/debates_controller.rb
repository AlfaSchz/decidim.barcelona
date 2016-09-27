class DebatesController < ApplicationController
  before_filter { |c| c.check_participatory_process_flags :debates }

  include CommentableActions
  include FlagActions

  before_action :parse_search_terms, only: :index
  before_action :parse_advanced_search_terms, only: :index
  before_action :parse_tag_filter, only: :index
  before_action :set_search_order, only: :index
  before_action :authenticate_user!, except: [:index, :show]

  has_orders %w{hot_score confidence_score created_at relevance}, only: :index
  has_orders %w{most_voted newest oldest}, only: :show

  load_and_authorize_resource
  respond_to :html, :js

  def vote
    @debate.register_vote(current_user, params[:value])
    set_debate_votes(@debate)
  end

  private

    def debate_params
      params.require(:debate).permit(:title, :description, :tag_list, :instructions,
                                     :terms_of_service, :picture, :starts_at, :ends_at)
    end

    def resource_model
      Debate
    end

end
