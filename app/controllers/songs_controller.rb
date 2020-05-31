class SongsController < ApplicationController
    before_action :find_song, only: [:create, :show, :edit, :update]

    def index
        @songs = Song.all
    end
    
    def new
        @song = Song.new
    end 

    def create 
        @song = Song.new(song_params(:name, :artist_id, :genre_id))
        @song.save 
        redirect_to song_path(@song)
    end

    def show 
        @artist = Artist.find(@song.artist_id)
        @genre = Genre.find(@song.genre_id)
    end 

    def edit 
    end 

    def update 
        @song = Song.update(song_params(:name))
        redirect_to song_path(@song)
    end

    private 

    def find_song
        @song = Song.find_by_id(params[:id])
    end

    def song_params(*args)
        params.require(:song).permit(*args)
    end
end