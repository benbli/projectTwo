class OrdersController < ApplicationController

# before_action :authenticate!

  def index
    @orders = Order.all
    @order = Order.new
  end

  def create
    Order.create(order_params)
    redirect_to orders_path
  end

  def destroy
    Order.delete(params[:id])
    redirect_to orders_path
  end

private

  def order_params
    params.require(:order).permit(:guest_id, :dish_id)
  end

end
