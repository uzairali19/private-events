class Event < ApplicationRecord
  belongs_to :user
  has_many :attendees
  has_many :attendances, through: :attended_events, source: :event
  #   belongs_to :creator, class_name: "User"
end
