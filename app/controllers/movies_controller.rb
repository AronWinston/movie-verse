class MoviesController < ApplicationController
    require 'httparty'
    
    def index
        @response = HTTParty.get('http://www.omdbapi.com/?t='+ params[:search].to_s + '&apikey=' ENV['MOVIEVERSE_API_KEY'])
        
    end
    
 
    def search
        @respones= Respone.all
    end
end
