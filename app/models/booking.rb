
# rubocop:disable all
class Booking < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  belongs_to :store

  has_many :messages, dependent: :destroy

  scope :pending, -> (min, max) { where("commission_amount >= #{min} AND commission_amount <= #{max}") }
  scope :price, -> (min, max) { where("rent_price_min >= #{min} AND rent_price_max <= #{max}") }
  scope :time, -> (min, max) { where("rent_time >= #{min} AND rent_time <= #{max}") }
  scope :brand, -> { where(brand: true) }
  scope :shop, -> { where(brand: false) }
  scope :not_belonging_to_user, -> (current_user) { where("user_id != #{current_user.id}") }


  # @category_choices = %w(Clothing Art Culinary Other)
end
