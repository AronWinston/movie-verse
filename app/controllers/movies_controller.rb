class MoviesController < ApplicationController
    require 'httparty'
    
    def index
        @response = HTTParty.get('http://www.omdbapi.com/?t='+ params[:search].to_s + "&apikey=" + ENV['MOVIEVERSE_API_KEY'])
        @comments = Comment.all
        @user=current_user
        @currentUser = current_user.id
    end
    
 
    def search
        @respones= Respone.all
    end

    def show
        @comment=Comment.find_by(params[:movie_id])
    end

    def new
        @comment = Comment.new
    end

    def create
        @currentUser = current_user.id
        @comment = Comment.create(
            user_id: @currentUser,
            movie_id: params[:movie_id],
            content: params[:content]
          )

          if @comment.save
            redirect_to 'movies#index'
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
end
