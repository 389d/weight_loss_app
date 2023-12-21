# db/migrate/xxxxxxxxxx_add_first_name_and_last_name_to_users.rb
class AddFirstNameAndLastNameToUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :first_name, :string
    change_column :users, :last_name, :string
  end
end