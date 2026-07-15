class AboutCarousel < ApplicationRecord
  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize_to_limit: [300, 300], format: :webp, saver: { quality: 80 }
    attachable.variant :featured, resize_to_limit: [600, 800], format: :webp, saver: { quality: 85 }
  end

  validates :title, presence: true
  validates :position, presence: true

  scope :active, -> { where(active: true) }
  default_scope { order(position: :asc, id: :desc) }
end
