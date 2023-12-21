class AddOwnerToShares < ActiveRecord::Migration[7.0]
  def change
    add_column :shares, :owner, :string
  end
end
