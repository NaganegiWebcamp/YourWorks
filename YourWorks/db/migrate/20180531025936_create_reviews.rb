class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.references :target_user, foreign_key: { to_table: :users}
      t.integer :star, default: 3
      t.text :body, null: false
      t.timestamps
    end
  end
end
