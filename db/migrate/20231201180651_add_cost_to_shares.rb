class AddCostToShares < ActiveRecord::Migration[7.0]
  def change
    add_column :shares, :cost, :decimal
  end
end
