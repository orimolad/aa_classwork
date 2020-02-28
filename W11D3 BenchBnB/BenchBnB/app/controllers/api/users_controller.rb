class Api::UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        if @user
      #      render :show
        else
            render json: @user.errors.full_messages, status: 404
        end
    end

    def create
        @user = User.new(user_params)
        if @user.save
            debugger
            login(@user)
            render json: ["success"]
        #    redirect_to user_url(@user)
        else
            # Tell the user that something went wrong. Let them try again.
            render json:  @user.errors.full_messages, status: 422
         #   render :new
        end
    end
    def user_params
        params.require(:user).permit(:username, :password)
    end
        
end
