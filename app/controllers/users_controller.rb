class UsersController < ApplicationController
    def index 
        @users = User.all 
        render json:@users
    end 

    def show
        @user = User.find(params[:id])
        render json:@user
    end

    def create
        data = JSON.parse(request.raw_post)
        @user = User.create(data)
        render json:@user
    end
end
