class TablesController < ApplicationController

  before_action :authenticate!

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
    params.require(:table).permit(:seat_numbers)
  end


end
