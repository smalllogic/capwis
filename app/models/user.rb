class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def super_admin?
    role == 'super_admin' || admin
  end

  def admin_role?
    ['super_admin', 'admin'].include?(role)
  end

  def user?
    role == 'user'
  end
end
