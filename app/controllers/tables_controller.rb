class TablesController < ApplicationController

  before_action :authenticate!

  def index
    @tables = Table.all
    @table = Table.new
  end

  def create
    current_user.tables.create(table_params)
    redirect_to profile_path
    current_user.create(order_params)
    redirect_to request.referrer
  end

  def destroy
    Table.delete(params[:id])
    redirect_to profile_path
  end

  def show
    @table = Table.find(params[:id])
  end

private
  def table_params
    params.require(:table).permit(:seat_numbers, :user_id)
  end

  def order_params
    params.require(:order).permit(:table_id, :dish_id)
  end

end
