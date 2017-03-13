class Troop < ApplicationRecord
  geocoded_by :address
  after_validation :geocode
  has_many :members
  has_many :users, through: :members
  has_many :posts
end