class Discussion < ApplicationRecord
  belongs_to :user, optional: true
end
