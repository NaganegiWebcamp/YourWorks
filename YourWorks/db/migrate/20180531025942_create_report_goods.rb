class CreateReportGoods < ActiveRecord::Migration[5.1]
  def change
    create_table :report_goods do |t|
      t.references :user, foreign_key: true
      t.references :good, foreign_key: true
      t.text :reason ,null: false
      t.boolean :hide_flg ,default: false
      t.timestamps
    end
  end
end
