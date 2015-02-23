class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(user_name: params[:user_name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to users_path, notice: "Successfully logged in #{@user.user_name}!"
    else
      flash[:alert] = "Invalid username / password"
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to root_path, notice: "Successfully logged out #{@user.user_name}!"
  end

end
