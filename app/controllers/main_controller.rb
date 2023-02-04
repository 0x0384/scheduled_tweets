class MainController < ApplicationController
    def index
        flash.now[:notice] = "Logged in successfully"
        flash.now[:alert] = "Invalid email or password"
    # .now was added to stop persisting in the cookie for the next request and only make it display on the current request
    end
end