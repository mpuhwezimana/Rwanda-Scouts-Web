class Troop < ApplicationRecord
  has_many :members
  has_many :users, through: :members
  has_many :posts
end
