class Event < ApplicationRecord
  include PgSearch::Model
  belongs_to :user
  belongs_to :category
  has_many :registrations, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorited_by_users, through: :favorites, source: :user
  has_many :users, through: :registrations
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :photo

  pg_search_scope :search_by_category_city_and_name,
    associated_against: {
      category: :name
    },
    against: {
      city: 'A',
      title: 'B'
    },
    using: {
      tsearch: { prefix: true }
    }
end

def participants_count
  registrations.count
end
