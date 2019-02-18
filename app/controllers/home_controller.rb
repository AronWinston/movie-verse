class HomeController < ApplicationController
    before_action :authenticate_user!

    def index
        @user = current_user
        @currentUser = @user.id 
        @movies = Movie.where(user_id: @currentUser)
    end



end
