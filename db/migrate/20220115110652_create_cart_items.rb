class CreateCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_items do |t|
      t.integer :customer_id
      t.integer :item_id
      t.integer :amount
      t.timestamps
    end
    add_index :cart_items, [:customer_id, :item_id], unique: true
  end
end
