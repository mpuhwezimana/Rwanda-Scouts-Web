class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :image
      t.string :position
      t.string :address
      t.string :phone
      t.string :facebook
      t.string :email

      t.timestamps
    end
  end
end
