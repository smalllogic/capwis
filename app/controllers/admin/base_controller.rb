class Admin::BaseController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin

  layout "admin"

  private
  
  def check_admin
    unless current_user.admin_role?
      redirect_to root_path, alert: "您没有权限访问该页面。"
    end
  end

  def require_super_admin
    unless current_user.super_admin?
      redirect_to admin_root_path, alert: "只有大管理员才有权访问该模块。"
    end
  end
end
