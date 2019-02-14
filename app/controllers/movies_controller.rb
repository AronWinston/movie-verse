class MoviesController < ApplicationController
    require 'httparty'
    
    def index
        @response = HTTParty.get('http://www.omdbapi.com/?t='+ params[:search].to_s + "&apikey=" + ENV['MOVIEVERSE_API_KEY'])
        @comments = Comment.all
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
        @comment = Comment.create(
            user_id: params[:comment][:user_id],
            movie_id: params[:comment][:movie_id],
            content: params[:comment][:content]
          )

          if @comment.save
            redirect_to @comment
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
