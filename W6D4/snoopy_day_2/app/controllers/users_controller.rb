require "byebug"

class UsersController < ApplicationController
  

  def index  
    render json: User.all 
  end

  def create
    # render json: params
    user = User.new(user_params)
    if user.save!
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end

  end

  def show

    # user = User.find_by(id: params[:id])
    user = User.find(params[:id])
    render json: user

    # self.render json: User.find(self.params[:id])


  end

  def update

    user = User.find(params[:id])

    if user.update(user_params)
      redirect_to "/users/#{user.id}"
    else
      render json: user.errors.full_messages
    end

  end

  def destroy

    user = User.find(params[:id])
    user.destroy
    render json: user
    render json: user
  end

  private
  require "byebug"
  def user_params
    debugger
    # params { user {username: 'Andy'}}
    params.require(:user).permit(:username) 
  end
  


end
