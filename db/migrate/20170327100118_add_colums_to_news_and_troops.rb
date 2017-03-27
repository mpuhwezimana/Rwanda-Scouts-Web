class AddColumsToNewsAndTroops < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :image, :string
    add_column :posts, :introduction, :string
    add_column :posts, :author, :string
    add_column :troops, :troop_leader, :string
    add_column :troops, :district, :string
    add_column :troops, :sector, :string
  end
end
