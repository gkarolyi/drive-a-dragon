class Vehicle < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  has_many_attached :photos

  validates :name, uniqueness: true
  validates :user, presence: true
  validates :price, presence: true
  validates :category, inclusion: { in: :category? }

  private

  def category?
    ["spaceship", "carpet", "dragon"]
  end
end
