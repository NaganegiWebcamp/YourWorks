class CreateOrderItemItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_item_items do |t|
      t.references :order_item, foreign_key: true
      t.string :name
      t.text :explanation
      t.timestamps
    end
  end
end
