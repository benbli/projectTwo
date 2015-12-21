class TablesController < ApplicationController

  before_action :authenticate!

  def index
    @tables = Table.all
    @table = Table.new
    @order = Order.new
  end

  def create
    current_user.tables.create(table_params)
    redirect_to profile_path
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


end
