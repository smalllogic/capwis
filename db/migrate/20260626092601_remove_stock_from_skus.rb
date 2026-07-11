class RemoveStockFromSkus < ActiveRecord::Migration[8.1]
  def change
    remove_column :skus, :stock, :integer
  end
end
