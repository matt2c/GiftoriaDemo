class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.text :name
      t.text :category
      t.text :description
      t.text :occasion
      t.text :price
      t.text :image

      t.timestamps
    end
  end
end
