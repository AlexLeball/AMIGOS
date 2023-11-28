class Registration < ApplicationRecord
  belongs_to :user
  belongs_to :event
  validates :user, uniqueness: { scope: :event, message: "You are already registered to this event" }
end
