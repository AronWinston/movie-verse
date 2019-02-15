class MoviesController < ApplicationController
    require 'httparty'
    
    def index
        @response = HTTParty.get('http://www.omdbapi.com/?t='+ params[:search].to_s + "&apikey=" + ENV['MOVIEVERSE_API_KEY'])
        @comments = Comment.all
        @user=current_user
        @currentUser = current_user.id

    end

    def search
            if params[:movie_title].blank?  
              redirect_to(root_path, alert: "Empty field!") and return  
            else  
              @movietitle = params[:movie_title].downcase
              @response = HTTParty.get('http://www.omdbapi.com/?t='+ @movietitle.to_s + "&apikey=" + ENV['MOVIEVERSE_API_KEY'])
  
            end  
          
    end

    def show
        @response = HTTParty.get('http://www.omdbapi.com/?t='+ params[:query].to_s + "&apikey=" + ENV['MOVIEVERSE_API_KEY'])
        @movie_id = @response[:imdbID]
        @comment=Comment.find_by(params[@movie_id])
    end

    def new
        @comment = Comment.new
    end

    def create
        @currentUser = current_user.id
        @comment = Comment.new(
            user_id: @currentUser,
            movie_id: @movie_id,
            content: params[:content]
          )

          if @comment.save
            redirect_to 'movies#show'
          else
            render 'new'
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
