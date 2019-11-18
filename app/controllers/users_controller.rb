class UsersController < ApplicationController
    def index 
        @users = Search.all 
        render json:@users
    end 

    def show
        @user = Search.find(params[:id])
        render json:@user
    end

    def create
        data = JSON.parse(request.raw_post)
        @user = Search.create(data)
        render json:@user
    end
end
