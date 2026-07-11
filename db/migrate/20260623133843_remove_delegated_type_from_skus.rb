class RemoveDelegatedTypeFromSkus < ActiveRecord::Migration[8.0]
  def change
    remove_column :skus, :skuable_type, :string
    remove_column :skus, :skuable_id, :integer
  end
end
