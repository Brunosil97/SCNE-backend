class Song < ApplicationRecord
    has_one_attached :image
    include Rails.application.routes.url_helpers


    def image_url
      return rails_blob_path(self.image, only_path: true)
    end
end
