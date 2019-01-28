class FilmsController < ApplicationController
  def index
    @films = Film.order(:title)
  end

  def edit
    @film = Film.find(params[:id])
  end

  def update
    @film = Film.find(params[:id])
    @film.update(film_params)
    flash[:alert] = 'Film updated'
    puts ">>>>>>>>>>  #{__FILE__}:#{__LINE__} <<<<<<<<<<"
    redirect_to films_path
  end

  private
  def film_params
    params.require(:film).permit(:title, :tagline)
  end

end
