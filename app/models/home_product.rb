class HomeProduct < ApplicationRecord
  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize_to_limit: [300, 300], format: :webp, saver: { quality: 80 }
    attachable.variant :marquee, resize_to_limit: [400, 500], format: :webp, saver: { quality: 85 }
  end

  validates :position, presence: true
  validates :row, presence: true, inclusion: { in: [1, 2] }

  scope :active, -> { where(active: true) }
  scope :row1, -> { where(row: 1) }
  scope :row2, -> { where(row: 2) }

  default_scope { order(position: :asc, id: :desc) }

  def self.row_options
    [['第一行 (Forward)', 1], ['第二行 (Reverse)', 2]]
  end
end
