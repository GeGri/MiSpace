class Space < ApplicationRecord
  has_one_attached :photo
  has_many :bookings
  belongs_to :user

  validates :name, :address, :price, :description, :availability, presence: true
end
