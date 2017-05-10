class CreateSuppliers < ActiveRecord::Migration[5.0]
  def change
    create_table :suppliers do |t|
      t.text :name
      t.text :email
      t.text :password_digest
      t.text :industry
      t.integer :phone
      t.text :location
      t.text :website
      t.text :image

      t.timestamps
    end
  end
end
