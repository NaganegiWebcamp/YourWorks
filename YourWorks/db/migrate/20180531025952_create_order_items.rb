class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.references :order, foreign_key: true
      t.references :user, foreign_key: true
      t.string :good_title, null:false
      t.text :good_explanation
      t.integer :value, null: false
      t.string :seller_name
      t.timestamps
    end
  end
end
