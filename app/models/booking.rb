class AvailabilityValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    bookings = Booking.where(["developer_id =?", record.developer_id])
    date_ranges = bookings.map { |b| b.start_date..b.end_date }

    date_ranges.each do |range|
      record.errors.add(attribute, "not available") if range.include? value
    end
  end
end

class Booking < ApplicationRecord
  belongs_to :vehicle, counter_cache: true
  belongs_to :user
  has_many :reviews

  validates :vehicle, presence: true
  validates :user, presence: true
  validates :start_date, :end_date, presence: true, availability: true
  validate :end_date_after_start_date

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    errors.add(:end_date, "must be after the start date") if end_date < start_date
  end
end
