class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to log_in_path
    else
      flash[:error] = user.errors.full_messages
      redirect_to log_in_path
    end
  end

  def log_in
  end

  def profile
    current_user
    @table = Table.new
  end

private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
