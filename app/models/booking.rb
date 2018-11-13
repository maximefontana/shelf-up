class Booking < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  belongs_to :store, dependent: :destroy
end
