class AddDiscussionIdToComment < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :discussion_id, :integer
  end
end