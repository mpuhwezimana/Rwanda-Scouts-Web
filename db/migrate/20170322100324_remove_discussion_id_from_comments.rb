class RemoveDiscussionIdFromComments < ActiveRecord::Migration[5.0]
  def change
    remove_column :comments, :discussion_id, :integer
  end
end