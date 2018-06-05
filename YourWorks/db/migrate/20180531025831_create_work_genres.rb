class CreateWorkGenres < ActiveRecord::Migration[5.1]
  def change
    create_table :work_genres do |t|
      t.string :name ,null: false
      t.text :explanation
      t.integer :genre_status, limit:2
      t.timestamps
    end
  end
end
