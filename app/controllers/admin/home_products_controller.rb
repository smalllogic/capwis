class Admin::HomeProductsController < Admin::BaseController
  before_action :set_home_product, only: [:edit, :update, :destroy]

  def index
    @home_products = HomeProduct.unscoped.order(row: :asc, position: :asc, id: :desc)
  end

  def new
    @home_product = HomeProduct.new(active: true, position: (HomeProduct.maximum(:position) || 0) + 1, row: 1)
  end

  def edit
  end

  def create
    @home_product = HomeProduct.new(home_product_params)

    if @home_product.save
      redirect_to admin_home_products_path, notice: '首页产品图片创建成功。'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @home_product.update(home_product_params)
      redirect_to admin_home_products_path, notice: '首页产品图片更新成功。'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @home_product.destroy
    redirect_to admin_home_products_path, notice: '首页产品图片已删除。'
  end

  private

  def set_home_product
    @home_product = HomeProduct.find(params[:id])
  end

  def home_product_params
    params.require(:home_product).permit(:title, :link, :position, :row, :active, :image)
  end
end
