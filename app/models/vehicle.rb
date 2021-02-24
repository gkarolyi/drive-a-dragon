class Vehicle < ApplicationRecord
  CATEGORIES = ['sci-fi', 'magic creature', 'magic object'].freeze

  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  has_many_attached :photos

  validates :name, uniqueness: true
  validates :user, presence: true
  validates :price, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
