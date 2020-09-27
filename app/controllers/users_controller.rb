class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create 
        user = User.create(user_params)
        render json: user, status: 200
    end

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end


    private

    def user_params
        params.permit(:username, :name, :avatar)
    end
end