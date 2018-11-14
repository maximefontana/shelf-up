class Store < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  has_many :bookings

  validates :location, presence: true
  validates :name, presence: true

  CATEGORY_CHOICES = %w(Clothing Jewelry Art Culinary Other)
end
