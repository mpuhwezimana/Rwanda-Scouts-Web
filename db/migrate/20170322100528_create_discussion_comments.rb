class CreateDiscussionComments < ActiveRecord::Migration[5.0]
  def change
    create_table :discussion_comments do |t|
      t.string :name
      t.text :body
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end