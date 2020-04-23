class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist, :image_url

end
