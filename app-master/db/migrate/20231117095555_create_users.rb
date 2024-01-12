# db/migrate/таймстамп_создания_миграции_create_users.rb

class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name, limit: 100
      t.string :last_name, limit: 100
      t.string :email, limit: 150, null: false
	  t.string :role # Добавляем столбец "role"
      t.timestamps
    end
  end
end