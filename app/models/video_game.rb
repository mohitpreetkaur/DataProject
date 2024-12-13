class VideoGame < ApplicationRecord
  belongs_to :character

  validates :name, presence: true
  validates :character, presence: true
end
