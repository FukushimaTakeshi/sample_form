class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :name_kana
      t.string :tel
      t.string :mail
      t.string :birthday
      t.string :question

      t.timestamps
    end
  end
end
