class ArtistsController < ApplicationController

    before_action :find_artist, only: [:show, :edit, :update]

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.new(artist_params(:name, :bio))
        @artist.save
        redirect_to artist_path(@artist)
    end

    def show 
    end

    def edit 
    end

    def update
        @artist = Artist.update(artist_params(:name, :bio))
        redirect_to artist_path(@artist)
    end

    private

    def artist_params(*args)
        params.require(:artist).permit(*args)
    end

    def find_artist
        @artist = Artist.find_by_id(params[:id])
    end

end
