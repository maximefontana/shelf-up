# frozen_string_literal: true

#rubocop:disable all
class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy
  has_many :stores, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :messages, dependent: :destroy

  validates :username, presence: true, uniqueness: true
end
