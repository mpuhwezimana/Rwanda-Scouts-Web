class CreateContactes < ActiveRecord::Migration[5.0]
  def change
    create_table :contactes do |t|

      t.timestamps
    end
  end
end
