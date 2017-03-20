class CreatePastries < ActiveRecord::Migration[5.0]
  def change
    create_table :pastries do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
