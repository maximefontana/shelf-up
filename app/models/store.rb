class Store < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  has_many :bookings

  validates :location, presence: true
  validates :name, presence: true

  CATEGORY_CHOICES = %w(Clothing Jewelry Art Culinary Other)

  include PgSearch
  # scope :category, -> (category) { where("category ILIKE ?", "%#{category}%") }
  scope :commission, -> (min, max) { where("commission_amount >= #{min} AND commission_amount <= #{max}") }
  scope :price, -> (min, max) { where("rent_price_min >= #{min} AND rent_price_max <= #{max}") }

  pg_search_scope :search_by_location,
    against: [ :location ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  pg_search_scope :search,
  against: [ :location, :category, :name],
  using: {
      tsearch: { prefix: true }
    }
end
