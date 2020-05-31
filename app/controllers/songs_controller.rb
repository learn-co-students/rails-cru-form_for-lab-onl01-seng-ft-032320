class SongsController < ApplicationController

   def index
      @songs = Song.all
   end

   def new
      @song = Song.new
   end

   def create
      @song = Song.create(song_params(:name,:artist_id,:genre_id))
      redirect_to @song
   end

   def show
      @song = Song.find_by(id: params[:id])
      @artist = Artist.find_by(id: @song.artist_id)
      @genre = Genre.find_by(id: @song.genre_id)
   end

   def edit
      @song = Song.find_by(id: params[:id])
   end

   def update
      @song = Song.update(song_params(:name))
      redirect_to @song
   end

   private

   def song_params(*args)
      params.require(:song).permit(*args)
   end
end
