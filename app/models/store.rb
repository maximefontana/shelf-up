class Store < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :ratings, dependent: :destroy

  validates :location, presence: true
  validates :address, presence: true
  validates :name, presence: true
  validates :photo, presence: true
  validates :category, presence: true
  validates :address, presence: true

  include PgSearch
  scope :commission, -> (min, max) { where("commission_amount >= #{min} AND commission_amount <= #{max}") }
  scope :price, -> (min, max) { where("rent_price_min >= #{min} AND rent_price_max <= #{max}") }
  scope :time, -> (min, max) { where("rent_time >= #{min} AND rent_time <= #{max}") }
  scope :brand, -> { where(brand: true) }
  scope :shop, -> { where(brand: false) }

  pg_search_scope :search,
  against: [ :location, :category, :name],
  using: {
      tsearch: { prefix: true }
    }
end
