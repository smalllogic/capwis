class LoginLog < ApplicationRecord
  belongs_to :user

  after_create_commit :enqueue_geoinfo_job

  def device_info
    return "未知" if user_agent.blank?
    
    ua = user_agent.downcase
    if ua.include?('iphone') || ua.include?('ipad')
      "iOS 设备"
    elsif ua.include?('android')
      "Android 设备"
    elsif ua.include?('windows')
      "Windows PC"
    elsif ua.include?('macintosh')
      "Mac PC"
    elsif ua.include?('linux')
      "Linux PC"
    else
      "其他设备"
    end
  end

  private

  def enqueue_geoinfo_job
    return if ip_address.blank? || ip_address == '127.0.0.1' || ip_address == '::1'
    GeocodeLoginLogJob.perform_later(self)
  end
end
