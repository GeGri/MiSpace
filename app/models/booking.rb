class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :space

  validates :start_date, :end_date, presence: true
  validates :end_date, comparison: { greater_than: :start_date }
  validate :timeslot_is_available

  private

  def timeslot_is_available
    overlapping_bookings = Booking.where(space_id: space_id)
                                 .where.not(id: id)
                                 .where('(start_date, end_date) OVERLAPS (?, ?)', start_date, end_date)
    errors.add(:start_date, "Time slot has already been taken, please pick another") if overlapping_bookings.exists?
    errors.add(:end_date, "Time slot has already been taken, please pick another") if overlapping_bookings.exists?
  end
end
