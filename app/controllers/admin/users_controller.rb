module Admin
  class UsersController < BaseController
    before_action :require_super_admin
    before_action :set_user, only: [:edit, :update, :destroy, :promote]

    def index
      @users = User.order(created_at: :desc)
    end

    def edit
    end

    def update
      if @user.update(user_params)
        redirect_to admin_users_path, notice: "用户信息已更新。"
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def promote
      @user.update(role: 'admin')
      redirect_to admin_users_path, notice: "用户已成功提升为小管理员。"
    end

    def destroy
      if @user == current_user
        redirect_to admin_users_path, alert: "您不能删除自己的账户。"
        return
      end

      ActiveRecord::Base.transaction do
        @user.login_logs.destroy_all
        @user.operation_logs.destroy_all
        if @user.destroy
          redirect_to admin_users_path, notice: "用户已成功删除。"
        else
          redirect_to admin_users_path, alert: "删除用户失败：#{@user.errors.full_messages.join(', ')}"
        end
      end
    rescue ActiveRecord::InvalidForeignKey
      redirect_to admin_users_path, alert: "无法删除用户，因为该用户仍有关联的日志记录或其他数据。"
    rescue => e
      redirect_to admin_users_path, alert: "删除过程中发生错误：#{e.message}"
    end

    private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:role)
    end
  end
end
