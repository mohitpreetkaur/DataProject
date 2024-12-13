class Liked < ApplicationRecord
  belongs_to :character
  belongs_to :user

  validates :character, presence: true
  validates :user, presence: true
  validates :character_id, uniqueness: { scope: :user_id, message: "has already been liked by this user" }
end
