class RemovePostFromDiscussionComments < ActiveRecord::Migration[5.0]
  def change
    remove_reference :discussion_comments, :post, foreign_key: true
    add_reference :discussion_comments, :discussion, foreign_key: true
  end
end
