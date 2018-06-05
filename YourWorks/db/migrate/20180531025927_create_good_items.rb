class CreateGoodItems < ActiveRecord::Migration[5.1]
  def change
    create_table :good_items do |t|
      t.references :good, foreign_key: true
      t.text :image_id, null:false
      t.text :body
      t.timestamps
    end
  end
end
