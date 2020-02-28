class Api::SessionsController < ApplicationController
   

    def destroy
        if logged_in?
            logout
            render json:{}
        else
            render json: ['You need to login'], status: 404 
        end
    end   

    def create
        debugger
        @user = User.find_by_credentials(user_params[:username],user_params[:password])
        if @user.nil?
            render json: ['Invalid username or password.'], status: 404
        else
            login(@user)
            render json: ['success']
        end
    end
    def user_params
        params.require(:user).permit(:username, :password)
    end
end


