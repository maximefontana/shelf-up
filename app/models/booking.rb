
# rubocop:disable all
class Booking < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  belongs_to :store

  has_many :messages, dependent: :destroy

  # @category_choices = %w(Clothing Art Culinary Other)
  CATEGORY_CHOICES = %w(Clothing Jewelry Art Culinary Other)
end
