class CreateWorkItems < ActiveRecord::Migration[5.1]
  def change
    create_table :work_items do |t|
      t.references :work, foreign_key: true
      t.text :image_id, null: false
      t.text :body
      t.timestamps
    end
  end
end
