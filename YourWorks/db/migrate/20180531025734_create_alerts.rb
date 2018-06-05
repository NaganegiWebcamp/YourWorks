class CreateAlerts < ActiveRecord::Migration[5.1]
  def change
    create_table :alerts do |t|
      t.string :title , null: false
      t.text :body, null:false
      t.integer :type, limit: 2
      t.boolean :top_flg ,default: true
      t.timestamps
    end
  end
end
