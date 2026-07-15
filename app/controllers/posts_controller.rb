class PostsController < ApplicationController
  def index
    @posts = Post.published.page(params[:page]).per(20)
  end

  def show
    @post = Post.published.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to posts_path
  end
end
