class AttendeesController < ApplicationController
  def show
    @event = Event.find(params[:event_id])
    @attend = Attendee.where('event_id = ?', event.id)
  end
end
