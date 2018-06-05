class CreateFolders < ActiveRecord::Migration[5.1]
  def change
    create_table :folders do |t|
    	t.references :user
    	t.string :title, null: false
    	t.text :explanation
    	t.boolean :hide_flg, default: false
      t.timestamps
    end
  end
end
