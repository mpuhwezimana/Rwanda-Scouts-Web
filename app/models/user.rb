class User < ApplicationRecord
  has_many :members
  has_many :troops, through: :members
end
