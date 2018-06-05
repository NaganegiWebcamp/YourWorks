class CreateFolderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :folder_items do |t|
      t.references :folder, foreign_key: true
      t.references :work, foreign_key: true
      t.text :explanation
      t.timestamps
    end
  end
end
