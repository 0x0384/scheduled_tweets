class MainController < ApplicationController
    # Moved to ApplicationController so that every controller can have
    # access to it.
    # def index
    #     if session[:user_id]
    #         @user = User.find_by(id: session[:user_id])
    #     end
    # end
end