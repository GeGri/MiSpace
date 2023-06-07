class Space < ApplicationRecord
  has_many_attached :photos
  has_many :bookings
  belongs_to :user

  validates :name, :address, :price, :description, :availability, presence: true
end
