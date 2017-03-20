class CreateJavas < ActiveRecord::Migration[5.0]
  def change
    create_table :javas do |t|
      t.string :name
      t.string :size
      t.integer :price
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
