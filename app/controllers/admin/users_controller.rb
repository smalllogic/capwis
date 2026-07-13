module Admin
  class UsersController < BaseController
    before_action :require_super_admin
    before_action :set_user, only: [:show, :destroy, :promote]

    def index
      @users = User.order(created_at: :desc)
    end

    def show
    end

    def promote
      @user.update(role: 'admin')
      redirect_to admin_users_path, notice: "用户已成功提升为小管理员。"
    end

    def destroy
      @user.destroy
      redirect_to admin_users_path, notice: "User was successfully deleted."
    end

    private

    def set_user
      @user = User.find(params[:id])
    end
  end
end
