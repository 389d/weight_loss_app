# frozen_string_literal: true

class AddDeviseToUsers < ActiveRecord::Migration[7.1]
  def self.up
    change_table :users do |t|
      ## Database authenticatable
      t.string :encrypted_password, null: false, default: ""

      ## Rememberable
      t.datetime :remember_created_at
    end

    add_index :users, :email, unique: true
  end

  def self.down
    remove_index :users, :email
    remove_column :users, :encrypted_password
    remove_column :users, :remember_created_at
  end
end
