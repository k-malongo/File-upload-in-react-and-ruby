class Redflag < ApplicationRecord
    has_one_attached :image
    # validates :image, presence: true
    # validates :description, presence: true
    def image_url
      Rails.application.routes.url_helpers.url_for(image) if image.attached?
    end
end
