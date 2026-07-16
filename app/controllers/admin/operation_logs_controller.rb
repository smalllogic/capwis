class Admin::OperationLogsController < Admin::BaseController
  before_action :require_super_admin

  def index
    @operation_logs = OperationLog.includes(:user).order(created_at: :desc).page(params[:page]).per(20)
  end

  def show
    @operation_log = OperationLog.find(params[:id])
  end

  def clear
    count = OperationLog.where('created_at < ?', 7.days.ago).delete_all
    redirect_to admin_operation_logs_path, notice: "已清理 #{count} 条7天前的操作日志。"
  end
end
