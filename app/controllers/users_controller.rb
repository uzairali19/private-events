class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:sign_in]

  def show
    @created_events = current_user.events
    # @upcoming_events = current_user.attended_events.upcoming_events
    # @past_events = current_user.attended_events.previous_events
  end
end
