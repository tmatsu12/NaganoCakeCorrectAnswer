class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details do |t|
      t.integer :order_id
      t.integer :item_id
      t.integer :price
      t.integer :amount
      t.integer :making_status, null: false, default: 0
      t.timestamps
    end
    add_index :order_details, [:order_id, :item_id], unique: true
  end
end
