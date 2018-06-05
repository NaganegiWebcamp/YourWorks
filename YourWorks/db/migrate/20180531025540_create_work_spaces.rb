class CreateWorkSpaces < ActiveRecord::Migration[5.1]
  def change
    create_table :work_spaces do |t|
      t.references :user, foreign_key: true
      t.string :message
      t.timestamps
    end
  end
end
