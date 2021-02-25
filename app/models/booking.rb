class Booking < ApplicationRecord
  STATUS = ['pending', 'accepted', 'declined'].freeze
  belongs_to :vehicle
  belongs_to :user
  has_many :reviews

  validates :vehicle, presence: true
  validates :user, presence: true
  validates :status, inclusion: { in: STATUS }

  def self.from_user(user_id)
    where("user_id = ?", user_id)
  end

  def self.booked_now
    where("start_date <= ?", Date.today).where("end_date >= ?", Date.today)
  end
end
