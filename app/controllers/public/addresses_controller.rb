class Public::AddressesController < ApplicationController
  before_action :authenticate_customer!
  before_action :ensure_address, only: [:edit, :update, :destroy]

  def index
    @addresses = current_customer.addresses
    @address = Address.new
  end

  def edit
  end
end
