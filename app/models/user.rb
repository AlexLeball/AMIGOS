class User < ApplicationRecord
  has_many :events, through: :registrations
  has_many :registrations, dependent: :destroy
  has_many :favorites
  has_many :messages
  has_many :user_categories
  has_many :categories, through: :user_categories
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
