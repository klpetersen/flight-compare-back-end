class SearchesController < ApplicationController

    def index 
        @searches = Search.all 
        render json:@searches
    end 

    def show
        @search = Search.find(params[:id])
        render json:@search
    end

    def create
        data = JSON.parse(request.raw_post)
        @search = Search.create(data)
        render json:@search
    end

    def destroy
        Search.destroy(params[:id])
        render json: Search.all
    end

end
