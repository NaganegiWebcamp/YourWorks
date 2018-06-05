class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :body
      t.text :image1_id
      t.text :image2_id
      t.text :image3_id
      t.text :image4_id
      t.timestamps
    end
  end
end
