class Post < ApplicationRecord
  belongs_to :troop, optional: true
  validates :title, presence: true
  validates :body, presence: true
end
