class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :events
  has_many :attendees
  has_many :attendances, through: :attended_events, source: :event

  validates_uniqueness_of :email, presence: true
  validates :password, presence: true
end
