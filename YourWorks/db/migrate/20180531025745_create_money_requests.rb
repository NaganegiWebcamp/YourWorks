class CreateMoneyRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :money_requests do |t|
      t.references :user
      t.integer :how_much ,null: false
      t.string :bank_name ,null: false
      t.string :branch_name ,null: false
      t.string :account_number ,null: false
      t.string :account_name ,null: false
      t.integer :status ,limit: 2
      t.timestamps
    end
  end
end
