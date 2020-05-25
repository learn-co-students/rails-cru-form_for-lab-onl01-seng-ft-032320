class ArtistsController < ApplicationController
    def index 
        @artists = Artist.all
    end

    def show
        set_artist
    end

    def new 
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(get_params)
        redirect_to artist_path(@artist)
    end

    def edit 
        set_artist
    end

    def update
        set_artist
        @artist.update(get_params)
        redirect_to artist_path(@artist)
    end

    private
    def set_artist
        @artist = Artist.find_by_id(params[:id])
    end

    def get_params
        params.require(:artist).permit(:name, :bio)
    end
end