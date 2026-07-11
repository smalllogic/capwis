class AddProductNameToSkus < ActiveRecord::Migration[8.1]
  def change
    add_column :skus, :product_name, :string
  end
end
