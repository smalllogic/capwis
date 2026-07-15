class Admin::AboutCarouselsController < Admin::BaseController
  before_action :set_about_carousel, only: [:edit, :update, :destroy]

  def index
    @about_carousels = AboutCarousel.unscoped.order(position: :asc, id: :desc)
  end

  def new
    @about_carousel = AboutCarousel.new(active: true, position: (AboutCarousel.maximum(:position) || 0) + 1)
  end

  def edit
  end

  def create
    @about_carousel = AboutCarousel.new(about_carousel_params)

    if @about_carousel.save
      redirect_to admin_about_carousels_path, notice: '轮播项创建成功。'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @about_carousel.update(about_carousel_params)
      redirect_to admin_about_carousels_path, notice: '轮播项更新成功。'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @about_carousel.destroy
    redirect_to admin_about_carousels_path, notice: '轮播项已删除。'
  end

  private

  def set_about_carousel
    @about_carousel = AboutCarousel.find(params[:id])
  end

  def about_carousel_params
    params.require(:about_carousel).permit(:title, :description, :link, :position, :active, :image)
  end
end
