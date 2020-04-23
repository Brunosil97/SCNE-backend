class SongsController < ApplicationController

    def index 
        songs = Song.all.with_attached_image
        render json: songs.to_json(include: { image_attachment: { include: :blob } })
    end 

    def show
        song = Song.find_by(id: params[:id])
        image = rails_blob_path(song.image)
        render json: {song: song, image: image}
    end
end
