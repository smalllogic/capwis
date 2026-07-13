class HomeController < ApplicationController
  before_action :check_submission_rate_limit, only: [:create_contact]

  def index
    @featured_categories = Category.unscoped.where(featured: true).order(featured_position: :asc, id: :desc).with_attached_image
  end

  def all_products
    @skus_by_category = Sku.where(status: 'active').order(position: :desc, created_at: :desc).group_by(&:category_id)
    @root_categories = Category.where(parent_id: nil).includes(children: { children: { children: :children } })
  end

  def contact
    @contact_message = ContactMessage.new
  end

  def about
  end

  def privacy
  end

  def factory
  end

  def create_contact
    if params[:privacy_agreement] != "1"
      redirect_to contact_path, alert: t('home.contact.form.privacy_error')
      return
    end

    @contact_message = ContactMessage.new(contact_params)
    if @contact_message.save
      begin
        NotificationMailer.contact_notification(@contact_message).deliver_later
      rescue => e
        Rails.logger.error "Failed to queue contact email: #{e.message}"
      end
      redirect_to contact_path, notice: t('home.contact.success_notice', default: "Message sent successfully. We will contact you as soon as possible. / 消息已成功发送，我们会尽快与您联系。")
    else
      render :contact, status: :unprocessable_entity
    end
  end

  private

  def check_submission_rate_limit
    last_submission = session[:last_submission_time]
    if last_submission.present? && Time.parse(last_submission) > 1.minute.ago
      redirect_to contact_path, 
                  alert: t('home.submission_limit', default: "You are submitting too frequently. Please try again in 1 minute. / 您提交得太频繁了，请在 1 分钟后再试。")
      return
    end
    session[:last_submission_time] = Time.current.to_s
  end

  def contact_params
    params.require(:contact_message).permit(:name, :email, :subject, :message)
  end
end
