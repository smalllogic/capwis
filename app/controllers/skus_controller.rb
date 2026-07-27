class SkusController < ApplicationController
  def show
    @sku = Sku.includes(category: { parent: { parent: :parent } }).find_by(id: params[:id])
    
    if @sku.nil?
      redirect_to all_products_path, alert: t('categories.no_skus_title')
      return
    end

    @kind = @sku.category.category_kind
    
    # Preload related products to avoid N+1 in view
    @related_skus = @sku.category.skus.active.with_attached_images.includes(:category).order(position: :asc, created_at: :desc).to_a
  end
end
