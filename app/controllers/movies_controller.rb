class MoviesController < ApplicationController
    require 'httparty'
    
    def index

        @response = HTTParty.get('http://www.omdbapi.com/?s='+ params[:movie_title].to_s + "&apikey=" + ENV['MOVIEVERSE_API_KEY'])
        @user=current_user
        @currentUser = current_user.id
    end

    def new
        @newcomment = Comment.new
    end

    def create_comment
        @currentUser = current_user.id
        @comments = Comment.where(movie_id: @movie_id)
        @movie_id = params[:movie_id]
        @newcomment = Comment.create(
            user_id: @currentUser,
            movie_id: @movie_id,
            content: params[:content]
        )
            redirect_to request.referrer
    end

    def add_movie
        @currentUser = current_user.id
        @movie_id = params[:movie_id]
        @response = HTTParty.get('http://www.omdbapi.com/?i='+ @movie_id.to_s + "&apikey=" + ENV['MOVIEVERSE_API_KEY'])
            
        @addmovie = Movie.create(
            user_id: @currentUser,
            movie_id: @movie_id,
            setdate: params[:setdate],
            movietitle: @response["Title"],
            movieposter: @response["Poster"]
        )
            redirect_to request.referrer
    end


    def show
        if params[:movie_title].blank?  
            redirect_to(root_path, alert: "Empty field!") and return  
        else  
            @movietitle = params[:movie_title].downcase
            @response = HTTParty.get('http://www.omdbapi.com/?t='+ @movietitle.to_s + "&apikey=" + ENV['MOVIEVERSE_API_KEY'])
            @currentUser = current_user.id
            @movie_id = @response["imdbID"]
            @comments = Comment.where(movie_id: @movie_id)
           
        end      
    end 

    
    def edit
    end

    def update
    end

    def destroy
    end

    private
    def search_params
        params.require(:movie).permit(:movie)
      end
end
