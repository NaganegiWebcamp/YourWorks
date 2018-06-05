class CreatePoints < ActiveRecord::Migration[5.1]
  def change
    create_table :points do |t|
      t.integer :points
      t.integer :price
      t.timestamps
    end
  end
end
