class Comment < ApplicationRecord
  belongs_to :post, optional: true
  validates :name, presence: true
  validates :body, presence: true
end
