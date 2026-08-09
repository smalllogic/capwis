class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :rememberable, :validatable, :lockable, :timeoutable

  has_many :login_logs, dependent: :destroy
  has_many :operation_logs, dependent: :destroy

  def super_admin?
    role == 'super_admin' || admin
  end

  def editor?
    role == 'editor'
  end

  def admin_role?
    ['super_admin', 'admin', 'editor'].include?(role)
  end

  def user?
    role == 'user'
  end

end
