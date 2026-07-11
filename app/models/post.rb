class Post < ApplicationRecord
  has_rich_text :content
  has_one_attached :cover_image

  validates :title, presence: true
  validates :status, inclusion: { in: %w[draft published] }

  scope :published, -> { where(status: "published").order(published_at: :desc) }

  def published?
    status == "published"
  end
end
