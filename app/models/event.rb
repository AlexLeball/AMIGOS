class Event < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :registrations, dependent: :destroy
  has_many :favorites
  has_many :users, through: :registrations
end
