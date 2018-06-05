class CreateUsersRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :users_relationships do |t|
      t.references :user ,foreign_key: true
      t.references :following, foreign_key: { to_table: :users}
      t.timestamps
    end
  end
end
