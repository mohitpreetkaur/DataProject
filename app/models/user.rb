class User < ApplicationRecord
  has_many :likes
  has_many :characters, through: :likes

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
end
