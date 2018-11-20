
# rubocop:disable all
class Booking < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  belongs_to :store

  has_many :messages, dependent: :destroy
end
