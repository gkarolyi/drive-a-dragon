class Booking < ApplicationRecord
  belongs_to :vehicle
  belongs_to :user
  belongs_to :user, through: :bookings
  has_many :reviews
end
