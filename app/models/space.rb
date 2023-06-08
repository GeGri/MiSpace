class Space < ApplicationRecord
  has_many_attached :photos
  has_many :bookings
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, :address, :price, :description, :availability, presence: true
end
