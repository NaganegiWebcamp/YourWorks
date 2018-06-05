class CreateGoods < ActiveRecord::Migration[5.1]
  def change
    create_table :goods do |t|
      t.references :good_genre, foreign_key: true
      t.references :user, foreign_key: true
      t.string :title, null:false
      t.text :explanation, null:false
      t.integer :value, default:0
      t.timestamps
    end
  end
end
