class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!

  def top
    # @count = Order.ordered_today.count
    @count = Order.count
  end
end
