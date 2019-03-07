class ArtistsController < ApplicationController
  
  before_action :set_artist, only: [:show, :edit, :destroy, :update]
  
  def index
    @artist = Artist.all
  end

  def show
    @songs = Song.where(artist_id: @artist.id)
  end

  def edit
  end

  def new
    @artists = Artist.new
  end

  def create
    @artists = Artist.new(artist_params)

    if @artists.save
      redirect_to @artists
    else
      render :new
    end

  end

  def update
    if @artists.update(artist_params)
      redirect_to @artists
    else
      render :edit
    end
  end

  def destroy
    @artist.destroy
    redirect_to artists_path
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name)
  end
end
