class Admin::OrdersController < ApplicationController
  before_action :authenticate_admin!

  def index
    if params[:customer_id]
      @customer = Customer.find(params[:customer_id])
      @orders = @customer.orders.page(params[:page]).reverse_order
    elsif params[:created_at] == "today"
      @orders = Order.ordered_today.includes(:customer).page(params[:page]).reverse_order
    else
      @orders = Order.includes(:customer).page(params[:page]).reverse_order
    end
  end

  def show
  end
end
