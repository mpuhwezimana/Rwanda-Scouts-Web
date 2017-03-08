class User < ApplicationRecord
  has_secure_password
  has_many :members
  has_many :troops, through: :members
end
