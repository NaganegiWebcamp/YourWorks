class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :prefectural, foreign_key: true
      t.string :order_number
      t.string :user_first_name
      t.string :user_last_name
      t.string :user_kana_name
      t.string :postal_code
      t.string :city
      t.string :street
      t.integer :amount
      t.integer :status
      t.integer :type

      t.timestamps
    end
  end
end
