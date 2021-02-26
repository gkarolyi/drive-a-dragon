class Review < ApplicationRecord
  RATINGS = [1, 2, 3, 4, 5].freeze

  belongs_to :booking
  belongs_to :user

  validates :booking, presence: true
  validates :title, presence: true
  validates :rating, inclusion: { in: RATINGS }
end
