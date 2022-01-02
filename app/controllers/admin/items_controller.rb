class Admin::ItemsController < ApplicationController
  before_action :authenticate_admin!

  def new
  end

  def index
    if params[:genre_id]
      @genre = Genre.find(params[:genre_id])
      all_items = @genre.items
    else
      all_items = Item.includes(:genre)
    end
    @items = all_items.page(params[:page])
    @all_items_count = all_items.count
  end

  def show
  end

  def edit
  end
end
