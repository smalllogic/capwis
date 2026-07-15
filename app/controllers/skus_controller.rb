class SkusController < ApplicationController
  def show
    @sku = Sku.includes(category: { parent: { parent: :parent } }).find(params[:id])
    @kind = @sku.category.category_kind
  end
end
