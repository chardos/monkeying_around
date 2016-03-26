class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :price
      t.string :address
      t.string :orientation
      t.string :notes
      t.integer :user_id
      t.timestamps
    end

    add_index :properties, :user_id
  end
end
