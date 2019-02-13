class MoviesController < ApplicationController
    require 'httparty'
    
    def index
        puts @response = HTTParty.get('http://www.omdbapi.com/?t='+ :userinput.to_s + '&apikey=d6605073')
        # @title = response.title
    end
    
end
