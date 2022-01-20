class Public::CartItemsController < ApplicationController
  before_action :authenticate_customer!
  before_action :set_cart_item, only: [:create, :update, :destroy]

  def index
    @cart_items = current_customer.cart_items.includes(:item)
  end
end
