class Rating < ApplicationRecord
  belongs_to :store, dependent: :destroy

  validates :score, presence: true
end
