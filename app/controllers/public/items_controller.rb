class Public::ItemsController < ApplicationController
  def top
    @genres = Genre.only_active.includes(:items)
    @items = Item.recommended
  end

  def show
  end

  def index
  end
end
