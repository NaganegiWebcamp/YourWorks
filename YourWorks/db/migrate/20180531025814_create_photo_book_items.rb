class CreatePhotoBookItems < ActiveRecord::Migration[5.1]
  def change
    create_table :photo_book_items do |t|
      t.references :photo_book, foreign_key: true
      t.text :photo_book_image_id, null: false
      t.text :explanation
      t.timestamps
    end
  end
end
