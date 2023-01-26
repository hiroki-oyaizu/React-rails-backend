class CreateOrUpdateFamilyTreeService
  def initialize(params)
    @genre_id = params[:genre_id]
    @family_tree_params = family_tree_params(params)
    @family_id = params[:id]
  end

  def call
    @genre = Genre.find(@genre_id)
    family = @genre.family_trees.find_or_initialize_by(id: @family_id)
    family.update!(@family_tree_params)
  end

  private

  def family_tree_params(params)
    params.permit(:price, :note, :purchase_day, :genre_id)
  end


end
