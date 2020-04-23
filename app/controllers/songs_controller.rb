class SongsController < ApplicationController

    def index 
        songs = Song.all.with_attached_image
        render json: songs, each_serializer: SongSerializer
    end 

    def show
        song = Song.find_by(id: params[:id])
        # render json: song
        image = rails_blob_path(song.image)
        render json: {song: song, image: image}
    end
end
