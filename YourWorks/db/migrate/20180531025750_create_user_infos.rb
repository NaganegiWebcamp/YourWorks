class CreateUserInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :user_infos do |t|
      t.references :user ,foreign_key: true
      t.references :prefectural_id, foreign_key: true
      t.string :first_name_kanji ,null: false
      t.string :last_name_kanji,null: false
      t.string :kana_name,null: false
      t.string :postal_code,null: false
      t.string :city , null: false
      t.string :street , null:false
      t.string :phone_number, null:false
      t.timestamps
    end
  end
end
