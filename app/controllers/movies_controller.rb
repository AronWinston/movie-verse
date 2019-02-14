class MoviesController < ApplicationController
    require 'httparty'
    
    def index
        @movietitle = if params[:movie]
            @response = HTTParty.get('http://www.omdbapi.com/?t='+ @movietitle.to_s + "&apikey=" + ENV['MOVIEVERSE_API_KEY'])
            
        end

    end

    def search
        def search  
            if params[:movie_title].blank?  
              redirect_to(root_path, alert: "Empty field!") and return  
            else  
              @movietitle = params[:movie_title].downcase
              @response = HTTParty.get('http://www.omdbapi.com/?t='+ @movietitle.to_s + "&apikey=" + ENV['MOVIEVERSE_API_KEY'])
  
            end  
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

    private
    def search_params
        params.require(:movie).permit(:movie)
      end
end
