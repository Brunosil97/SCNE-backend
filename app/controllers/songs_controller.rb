class SongsController < ApplicationController

    def index 
        songs = Song.all.with_attached_image
        render json: songs, each_serializer: SongSerializer
    end 

    def show
        song = Song.find_by(id: params[:id])
        image = rails_blob_path(song.image)
        render json: {song: song, image: image}
    end

    def create 
        song = Song.create(title: params[:title], artist: params[:artist], spotify: params[:spotify], soundcloud: params[:soundcloud])
        render json: song
        byebug
    end 

    def update 
        song = Song.find_by(params[:id])
        song.update(image: params[:image])
        image = rails_blob_path(song.image)
        byebug
        render json: {song: song, image: image}
    end 
end
