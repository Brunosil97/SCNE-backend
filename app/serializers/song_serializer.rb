class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist, :spotify, :soundcloud, :image_url

end
