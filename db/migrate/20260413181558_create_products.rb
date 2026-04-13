class CreateProducts < ActiveRecord::Migration[8.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.decimal :price, precision: 10, scale: 2
      t.integer :stock
      t.text :description

      t.timestamps
    end
  end
end
