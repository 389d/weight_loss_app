class RenameClientsToShares < ActiveRecord::Migration[6.1]
  def change
    rename_table :clients, :shares
  end
end