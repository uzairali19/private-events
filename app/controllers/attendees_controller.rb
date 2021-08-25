class AttendeesController < ApplicationController
  def show
    @event = Event.find(params[:event_id])
    @attend = Attendee.where('event_id = ?', event.id)
  end

  def create
    event = Event.find(params[:event_id])
    @attendee = Attendee.new(event_id: event.id, user_id: current_user.id)

    if Attendee.where(user_id: current_user.id, event_id: params[:event_id]).exists?
      redirect_to event_path(event)
      return
    end

    redirect_to event_path(event) if @attendee.save
  end
end
