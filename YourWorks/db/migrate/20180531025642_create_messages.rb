class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.references :user, foreign_key: true
      t.references :from_user, foreign_key: { to_table: :users}
      t.string :title ,null: false
      t.text :body ,null: false
      t.boolean :read_flg , default: false
      t.timestamps
    end
  end
end
