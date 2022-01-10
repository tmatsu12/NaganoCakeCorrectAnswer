class Admin::GenresController < ApplicationController
  before_action :authenticate_admin!

  def index
    @genre = Genre.new
    @genres = Genre.all
  end

  def edit
  end

  private

  def genre_params
    params.require(:genre).permit(:name, :is_active)
  end
end
