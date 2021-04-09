class Api::AnimesController < ApplicationController

  def index
    @animes = Anime.all

  end

  def show 
    @anime = Anime.find_by(id: params[:id])
  end

end
