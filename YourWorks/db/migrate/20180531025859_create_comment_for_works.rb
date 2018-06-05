class CreateCommentForWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :comment_for_works do |t|
      t.references :user, foreign_key: true
      t.references :work, foreign_key: true
      t.text :body, null: false
      t.timestamps
    end
  end
end
