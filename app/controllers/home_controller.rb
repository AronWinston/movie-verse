class HomeController < ApplicationController
    before_action :authenticate_user!

    def index
        @user = current_user
        @currentUser = @user.id 
        @movies = Movie.where(user_id: @currentUser)
        @fav_movie = @user.favorite_movie
        @response = HTTParty.get('http://www.omdbapi.com/?t='+ @fav_movie + "&apikey=" + ENV['MOVIEVERSE_API_KEY'])
        
    end



end
