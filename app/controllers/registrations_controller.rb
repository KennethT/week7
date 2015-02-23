class RegistrationsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(registration_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to users_path, notice: 'User was created.'
    else
      render :new
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to users_path, notice: 'User was destroyed.'
    end
  end

  def login
    @user = User.new
  end

  private
    def registration_params
      params.require(:user).permit(:user_name, :about, :password, :password_confirmation)
    end

end
