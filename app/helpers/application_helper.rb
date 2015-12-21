module ApplicationHelper
  def current_user
    if session[:user_id]
      @current_user = @current_user || User.find(session[:user_id])
    end
  end

  def authenticate!
    redirect_to root_path unless current_user
  end

  def tables
    @tables = Table.all
  end

  def order
    @order = Order.find(params[:id])
  end
end
