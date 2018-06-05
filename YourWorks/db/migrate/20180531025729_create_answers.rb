class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.references :admin , foreign_key: true
      t.references :inquiry ,foreign_key: true
      t.text :body, null: false
      t.timestamps
    end
  end
end
