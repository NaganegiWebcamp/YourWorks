class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.references :work, foreign_key: true
      t.integer :general
      t.integer :montly
      t.integer :m_ranking
      t.integer :weekly
      t.integer :w_ranking
      t.integer :daily
      t.integer :d_ranking
      t.timestamps
    end
  end
end
