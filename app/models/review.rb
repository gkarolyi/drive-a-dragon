class Review < ApplicationRecord
  belongs_to :booking

  validates :booking, presence: true
  validates :title, presence: true
  validates :rating, presence: true
end
