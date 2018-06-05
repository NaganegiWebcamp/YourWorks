class CreateCommentForNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :comment_for_notes do |t|
      t.references :user, foreign_key: true
      t.references :note, foreign_key: true
      t.string :body,null: false
      t.timestamps
    end
  end
end
