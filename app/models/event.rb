class Event < ApplicationRecord
  has_many :users, through: :registrations
  has_many :registrations, dependent: :destroy
end
