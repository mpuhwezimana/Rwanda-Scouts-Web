class Discussion < ApplicationRecord
  belongs_to :user, optional: true
  has_many :discussion_comments, dependent: :destroy
end
