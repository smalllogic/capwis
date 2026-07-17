class NotificationMailer < ApplicationMailer
  default from: ENV.fetch("MAILER_FROM", "Lincaps <onboarding@resend.dev>")

  def contact_notification(contact_message)
    # 强制注入 API Key 到当前邮件对象，跳过全局配置加载问题
    self.delivery_method.settings[:api_key] = ENV["RESEND_API_KEY"] if self.delivery_method.respond_to?(:settings)
    
    @contact_message = contact_message
    recipients = ENV.fetch("CONTACT_FORM_TO", "Caroline@lincaps.com").split(",")
    
    mail(
      to: recipients,
      subject: "New Contact Message: #{@contact_message.subject}"
    )
  end
end
