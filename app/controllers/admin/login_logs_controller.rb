class Admin::LoginLogsController < Admin::BaseController
  before_action :require_super_admin

  def index
    @login_logs = LoginLog.includes(:user).order(login_at: :desc).page(params[:page]).per(20)
  end

  def clear
    count = LoginLog.where('login_at < ?', 7.days.ago).delete_all
    redirect_to admin_login_logs_path, notice: "已清理 #{count} 条7天前的登录日志。"
  end
end
