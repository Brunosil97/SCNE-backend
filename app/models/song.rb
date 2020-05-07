class Song < ApplicationRecord
    has_one_attached :image

    validates :title, presence: true 
    validates :artist, presence: true 
    
    validates :spotify, format: {with: /(https:\/\/open.spotify.com\/)/}, allow_blank: true
    validates :soundcloud, format: {with: /(https:\/\/soundcloud.com\/)/}, allow_blank: true


    include Rails.application.routes.url_helpers

    def image_url
      return rails_blob_path(self.image, only_path: true)
    end
end
