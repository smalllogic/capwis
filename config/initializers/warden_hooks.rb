Warden::Manager.after_set_user do |user, auth, opts|
  if opts[:event] == :authentication
    # 提取真实 IP
    forwarded_for = auth.request.env['HTTP_X_FORWARDED_FOR']
    real_ip = if forwarded_for.present?
                forwarded_for.split(',').first&.strip
              else
                auth.request.env['HTTP_X_REAL_IP'] || auth.request.remote_ip
              end

    LoginLog.create(
      user: user,
      ip_address: real_ip,
      user_agent: auth.request.user_agent,
      login_at: Time.current
    )
  end
end
