class CreateTroops < ActiveRecord::Migration[5.0]
  def change
    create_table :troops do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :contacts
      t.string :address

      t.timestamps
    end
  end
end
