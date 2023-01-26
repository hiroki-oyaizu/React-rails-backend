class Api::V1::FamilyTreesController < ApplicationController
  def index
    genre = Genre.find(params[:genre_id])

    family = genre.family_trees.all
    render json: family
  end

  def create
    CreateOrUpdateFamilyTreeService.new(params).call
  end

  def update
    CreateOrUpdateFamilyTreeService.new(params).call
  end


end
