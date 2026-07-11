class AddFieldsToSkus < ActiveRecord::Migration[8.0]
  def up
    add_column :skus, :fabric, :string
    add_column :skus, :closure, :string
    add_column :skus, :profile, :string
    add_column :skus, :visor, :string
    add_column :skus, :unit_dimensions, :string
    add_column :skus, :standard_features, :text

    # 数据迁移
    Sku.reset_column_information
    Sku.find_each do |sku|
      detail = sku.skuable
      if detail
        sku.update_columns(
          fabric: detail.try(:fabric),
          closure: detail.try(:closure),
          profile: detail.try(:profile),
          visor: detail.try(:visor),
          unit_dimensions: detail.try(:unit_dimensions) || detail.try(:exterior_dimensions),
          standard_features: detail.try(:standard_features).to_s
        )
      end
    end
  end

  def down
    remove_column :skus, :fabric
    remove_column :skus, :closure
    remove_column :skus, :profile
    remove_column :skus, :visor
    remove_column :skus, :unit_dimensions
    remove_column :skus, :standard_features
  end
end
