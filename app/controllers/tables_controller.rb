class TablesController < ApplicationController

  before_action :authenticate!

def index
  @tables = Table.all
  @table = Table.new
  @table.guests.build  #research this
end

  def create
    current_user.tables.create(table_params)
    redirect_to profile_path
  end

  def destroy
    Table.delete(params[:id])
    redirect_to profile_path
  end


private
  def table_params
    params.require(:table).permit(:seat_numbers, :guest_id)
  end


end
