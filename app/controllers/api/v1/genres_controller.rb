class Api::V1::GenresController < ApplicationController
  def index
    genres = Genre.all
    render json: genres
  end

  def create
  
    CreateOrUpdateGenreService.new(params).call
    head :no_content
  end

  def show
    genre = Genre.find(params[:id])
    render json: genre
  end
end
