class CreatePhotoBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :photo_books do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :explanation
      t.integer :value
      t.boolean :ask_flg ,default: false
      t.integer :status, limit: 3
      t.timestamps
    end
  end
end
