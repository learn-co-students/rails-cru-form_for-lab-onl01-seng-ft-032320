class SongsController < ApplicationController
    def index 
        @songs = Song.all
    end

    def show
        set_song
    end

    def new 
        @song = Song.new
    end

    def create
        @song = Song.create(get_params)
        redirect_to song_path(@song)
    end

    def edit 
        set_song
    end

    def update
        set_song
        @song.update(get_params)
        redirect_to song_path(@song)
    end

    private
    def set_song
        @song = Song.find_by_id(params[:id])
    end

    def get_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end