class BillboardsController < ApplicationController
  
  before_action :set_billboard, only: [:new, :show, :edit, :destroy]
  
  def index
    @billboards = Billboard.all
  end

  def show
    @ranks = Rank.joins(song: :artist).order(:rank).where(billboard_id: @billboard)
  end

  def edit
  end

  def new
  end

  private

  def set_billboard
    @billboard = Billboard.find(params[:id])
  end


end
