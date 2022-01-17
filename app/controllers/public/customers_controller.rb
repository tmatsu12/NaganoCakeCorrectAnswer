class Public::CustomersController < ApplicationController
  before_action :authenticate_customer!
  before_action :set_current_customer

  def edit
  end

  def show
  end

  def unsubscribe
  end

  private

  def set_current_customer
    @customer = current_customer
  end
end
