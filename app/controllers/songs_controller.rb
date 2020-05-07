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
        song = Song.create(song_params)
        if song.valid? 
            render json: {song: song}
        else 
            render json: {messages: song.errors.full_messages}
        end 
    end 

    def update
        song = Song.find_by(id: params[:id])
        song.update(image: params[:image])
        image_url = rails_blob_path(song.image)
        render json: {song: song, image_url: image_url}
    end 

    def destroy
        song = Song.find_by(id: params[:id])
        song.destroy
        songs = Song.all.with_attached_image
        render json: songs, each_serializer: SongSerializer
    end 

    def update_song
        song = Song.find_by(id: params[:id])
        song.update(song_params)
        if song.valid? 
            song.save 
            render json: {song: song}
        else 
            render json: {messages: song.errors.full_messages}
        end 
    end

    private 

    def song_params
        params.require(:song).permit(:title, :artist, :spotify, :soundcloud)
    end


end
