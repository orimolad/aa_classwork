class UsersController < ApplicationController
  def new
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:session_token] = @user.session_token
      redirect_to user_url(@user)
    else
      # flash[:errors] = 'failed to make a new user'
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_url
    end


  end

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end
end 
