class Post < ApplicationRecord
  belongs_to :troop, optional: true
end
