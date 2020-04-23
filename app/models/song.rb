class Song < ApplicationRecord
    has_one_attached :image
    # include ActiveModel::Serializers::JSON

    # def attachment_url
    #     Rails.application.routes.url_helpers.rails_representation_url(
    #       image.variant(resize_to_limit: [200, 200]).processed, only_path: true
    #     )
    #   end
end
