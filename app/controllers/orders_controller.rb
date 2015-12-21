class OrdersController < ApplicationController

# before_action :authenticate!

  def index
    @orders = Order.all
    @order = Order.new
  end

  def create
    Order.create(order_params)
    redirect_to request.referrer
  end

  def destroy
    Order.delete(params[:id])
    redirect_to orders_path
  end

  def update
    order = Order.find(params[:id])
    order.update( order_params )
    redirect_to table_path
  end

private

  def order_params
    params.require(:order).permit(:table_id, :dish_id)
  end

end
