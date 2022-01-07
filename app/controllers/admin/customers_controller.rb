class Admin::CustomersController < ApplicationController
  before_action :authenticate_admin!
  before_action :ensure_customer, only: [:show, :edit, :update]

  def index
    @customers = Customer.page(params[:page])
  end

  def show
  end

  def edit
  end

  private

  def ensure_customer
    @customer = Customer.find(params[:id])
  end
end
