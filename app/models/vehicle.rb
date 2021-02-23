class Vehicle < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings

  validates :name, uniqueness: true
  validates :user, presence: true
  validates :price, presence: true
end
