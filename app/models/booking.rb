class AvailabilityValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    bookings = Booking.where(vehicle: record.vehicle)
    date_ranges = bookings.map { |b| b.start_date..b.end_date }

    date_ranges.each do |range|
      record.errors.add(attribute, "not available") if range.cover? value
    end
  end
end

class Booking < ApplicationRecord
  STATUS = ['pending', 'accepted', 'declined', 'cancelled'].freeze
  belongs_to :vehicle
  belongs_to :user
  has_many :reviews

  validates :vehicle, presence: true
  validates :user, presence: true
  validates :status, inclusion: { in: STATUS }
  validates :start_date, :end_date, presence: true, availability: true
  validate :end_date_after_start_date

  def self.from_user(user_id)
    where("user_id = ?", user_id)
  end

  def self.booked_now
    where("start_date <= ?", Date.today).where("end_date >= ?", Date.today)
  end

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    errors.add(:end_date, "must be after the start date") if end_date < start_date
  end
end
