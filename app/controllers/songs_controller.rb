class SongsController < ApplicationController

  before_action :set_artist, only: [:show, :edit, :create, :destroy, :new, :update]
  before_action :set_song, only: [:edit, :destroy, :show, :update]

  def index
    @songs = Song.all
  end

  def show
  end

  def edit
  end

  def new
    @song = @artist.songs.new
  end

  def create
    @song = @artist.songs.new(song_params)

    if @song.save
      redirect_to artist_path(@artist)
    else
      render :new
    end

  end

  def update

    if @song.update(song_params)
      redirect_to @artist
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    redirect_to @artist 
  end

  private

  def set_song
    @song = @artist.songs.find(params[:id])
  end

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def song_params
    params.require(:song).permit(:title, :artist_id)
  end
end
