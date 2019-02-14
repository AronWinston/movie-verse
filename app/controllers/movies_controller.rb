class MoviesController < ApplicationController
    require 'httparty'
    
    def index
        @response = HTTParty.get('http://www.omdbapi.com/?t='+ params[:search].to_s + '&apikey=d6605073')
        # @title = response.title
    end
    
    # def create
    #     @response = HTTParty.get('http://www.omdbapi.com/?t='+ params[:movie].to_s + '&apikey=d6605073')
    #     redirect_to movies_path
    # end

    def search
        @respones= Respone.all
    end
end
