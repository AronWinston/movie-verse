class HomeController < ApplicationController
    before_action :authenticate_user!
    def index
        @user = current_user
        @apikey = ENV["MOVIEVERSE_API_KEY"]
    end



end
