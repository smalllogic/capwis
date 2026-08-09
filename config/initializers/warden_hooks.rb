Warden::Manager.after_set_user do |user, auth, opts|
  if opts[:event] == :authentication
    # 提取真实 IP
    real_ip = auth.request.remote_ip

    LoginLog.create(
      user: user,
      ip_address: real_ip,
      user_agent: auth.request.user_agent,
      login_at: Time.current
    )
  end
end
