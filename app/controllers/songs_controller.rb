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
        render json: song.to_json
       
    end 

    def update 
        # byebug
        song = Song.find_by(id: params[:id])
        song.update(image: params[:image])
        image_url = rails_blob_path(song.image)
        
        render json: {song: song, image_url: image_url}
    end 
end
