class AddFeaturedAndImageToCategories < ActiveRecord::Migration[8.1]
  def change
    add_column :categories, :featured, :boolean, default: false
    add_column :categories, :featured_position, :integer, default: 0
  end
end
