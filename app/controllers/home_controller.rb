class HomeController < ApplicationController
    def index
        @user = current_user
        @apikey = ENV["MOVIEVERSE_API_KEY"]
    end
end
