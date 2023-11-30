class Event < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :registrations, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorited_by_users, through: :favorites, source: :user
  has_many :users, through: :registrations
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
