class CreateGoodGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :good_genres do |t|
      t.string :name , null: false
      t.text :explanation
      t.timestamps
    end
  end
end
