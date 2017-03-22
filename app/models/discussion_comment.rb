class DiscussionComment < ApplicationRecord
  belongs_to :discussion, optional: true
  validates :name, presence: true
  validates :body, presence: true
end