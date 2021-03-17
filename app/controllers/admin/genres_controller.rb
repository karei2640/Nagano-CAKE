class Admin::GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def create

  end

  def update
    if @genre.update(genre_params)
      redirect_to admin_genres_path, notice: "You have updated genre successfully."
    else
      render "edit"
    end
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end

end
