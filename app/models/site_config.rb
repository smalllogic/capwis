class SiteConfig < ApplicationRecord
  has_one_attached :logo
  has_one_attached :favicon

  def self.get
    first_or_create!(name: "Lincaps")
  end
end
