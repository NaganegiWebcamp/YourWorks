class CreateWants < ActiveRecord::Migration[5.1]
  def change
    create_table :wants do |t|
      t.references :user, foreign_key: true
      t.references :good, foreign_key: true
      t.timestamps
    end
  end
end
