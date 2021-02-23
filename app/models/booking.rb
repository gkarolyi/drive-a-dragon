class Booking < ApplicationRecord
  belongs_to :vehicle
  belongs_to :user
  has_many :reviews

  validates :vehicle, presence: true
  validates :user, presence: true
end
