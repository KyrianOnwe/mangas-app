class UsersController < ApplicationController
    def index
        users = User.all 
        render json: users
    end

    def create 
        user = User.create!(user_params)
            session[:user_id] = user.id
            render json: user, status: :ok
    end

    private 
    def user_params
        params.permit(:name, :password, :admin)
    end
end
