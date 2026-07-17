class NotificationMailer < ApplicationMailer
  default from: ENV.fetch("MAILER_FROM", "Lincaps <onboarding@resend.dev>")

  def contact_notification(contact_message)
    @contact_message = contact_message
    recipients = ENV.fetch("CONTACT_FORM_TO", "Caroline@lincaps.com").split(",")
    
    mail(
      to: recipients,
      subject: "New Contact Message: #{@contact_message.subject}"
    )
  end
end
