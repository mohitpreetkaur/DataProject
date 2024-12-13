class Character < ApplicationRecord
  has_many :video_games, dependent: :destroy
  has_many :tv_shows,dependent: :destroy
  has_many :films,dependent: :destroy
  has_many :likes, class_name: 'Liked' 
  has_many :users, through: :likes

  validates :name, presence: true, uniqueness: true
  validates :imageURL, presence: true
end
