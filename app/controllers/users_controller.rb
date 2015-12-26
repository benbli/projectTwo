class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)
    if user.save
      user.id = session[:user_id]
      redirect_to log_in_path
    else
      flash[:error] = user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def log_in
  end

  def profile
    current_user
  end

  def destroy
    User.delete(params[:id])
    redirect_to users_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to users_path
  end

private
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :account)
  end
end
