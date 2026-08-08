class AddMissingIndexes < ActiveRecord::Migration[8.1]
  def change
    # Skus: 常用的查询包含 status, position, created_at
    # 控制器示例: Sku.active.order(position: :asc, created_at: :desc)
    add_index :skus, [:status, :position, :created_at], name: 'index_skus_on_status_position_created_at'

    # Categories: 常用的查询包含 category_kind, hidden, position
    # 控制器示例: Sku.joins(:category).where(categories: { category_kind: @kind, hidden: false })
    add_index :categories, [:category_kind, :hidden, :position], name: 'index_categories_on_kind_hidden_position'

    # Posts: 常用的查询包含 status, published_at
    # 控制器示例: Post.published (where status: 'published')
    add_index :posts, [:status, :published_at], name: 'index_posts_on_status_published_at'

    # HomeProducts: 后台管理和首页显示
    add_index :home_products, [:active, :row, :position], name: 'index_home_products_on_active_row_position'

    # AboutCarousels: 轮播图显示
    add_index :about_carousels, [:active, :position], name: 'index_carousels_on_active_position'
  end
end
