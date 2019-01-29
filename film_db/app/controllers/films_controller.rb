class FilmsController < ApplicationController
  def index
    authorize Film
    @films = policy_scope(Film)
  end

  def edit
    @film = policy_scope(Film).find(params[:id])
    authorize @film
  end

  def update
    @film = policy_scope(Film).find(params[:id])
    @film.update(film_params)
    flash[:alert] = 'Film updated'
    redirect_to films_path
  end

  private
  def film_params
    params.require(:film).permit(:title, :tagline)
  end

end
