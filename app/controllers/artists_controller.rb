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
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)

    if @artist.save
      redirect_to @artist
    else
      render :new
    end

  end

  def update
    if @artist.update(artist_params)
      redirect_to artist_path(@artist)
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
