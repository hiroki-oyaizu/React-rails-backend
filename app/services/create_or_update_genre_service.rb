class CreateOrUpdateGenreService
  def initialize(params)
    @genres_params = genres_params(params)
    @genre_id = params[:id]
  end

  def call

    genre = Genre.find_or_initialize_by(id: @genre_id)
    genre.update!(@genres_params)
  end

  private

  def genres_params(params)
  params.permit(:genres_title, :tax_type, :buy_day )
  end
end
