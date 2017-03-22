class CreateDiscussions < ActiveRecord::Migration[5.0]
  def change
    create_table :discussions do |t|
      t.string :name
      t.string :post
      t.integer :user_id

      t.timestamps
    end
  end
end