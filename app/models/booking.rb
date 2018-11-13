class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :store, dependent: :destroy
end
