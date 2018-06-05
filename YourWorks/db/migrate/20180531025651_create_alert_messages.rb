class CreateAlertMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :alert_messages do |t|
      t.references :user, foreign_key: true
      t.string :title ,null: false
      t.text :body, null:false
      t.boolean :read_flg ,default: false
      t.timestamps
    end
  end
end
