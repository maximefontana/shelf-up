
# rubocop:disable all
class Booking < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  belongs_to :store

  has_many :messages, dependent: :destroy

  validates :name, presence: true
  validates :price_per_unit, presence: true
  validates :quantity, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  # @category_choices = %w(Clothing Art Culinary Other)
end
