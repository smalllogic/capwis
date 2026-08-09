# Be sure to restart your server when you modify this file.

# Define an application-wide content security policy.
# See the Securing Rails Applications Guide for more information:
# https://guides.rubyonrails.org/security.html#content-security-policy-header

Rails.application.configure do
  config.content_security_policy do |policy|
    policy.default_src :self, :https
    policy.font_src    :self, :https, :data
    policy.img_src     :self, :https, :data, "https://*.cloudflare.com" # 支持 R2 存储
    policy.object_src  :none
    policy.script_src  :self, :https, :unsafe_inline # unsafe_inline 对于某些旧版 JS/CSS 可能是必须的，建议逐步清理
    policy.style_src   :self, :https, :unsafe_inline
    # 如果使用了外部服务如 Google Analytics, 需要在此处添加域名
    # policy.script_src  :self, :https, "https://www.google-analytics.com"
  end

  # 生成 session nonces 以允许允许的脚本执行
  config.content_security_policy_nonce_generator = ->(request) { request.session.id.to_s }
  config.content_security_policy_nonce_directives = %w(script-src style-src)

  # 建议先开启 report_only 以观察是否有合法请求被拦截，确定没问题后再正式开启
  config.content_security_policy_report_only = true
end
