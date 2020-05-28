class SongsController < ApplicationController
    def new 
        @song = Song.new
    end

    def create 
        @song = Song.new(params.require(:song).permit(:name, :artist_id, :genre_id))
        @song.save 
        redirect_to song_path(@song)
    end

    def index
        @songs = Song.all
    end
    
    def show 
        @song = Song.find_by_id(params[:id])
        @artist = @song.artist 
        @genre = @song.genre
    end

    def edit 
        @song = Song.find_by_id(params[:id])
    end

    def update 
        @song = Song.find_by_id(params[:id])
        @song = Song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end
end