class RegistrationsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        #This creates a new user instance
        @user = User.new(user_params) # The validation (has_secure_password, and validates) in User model is run
        # If the user was saved to the database successfully
        if @user.save
            redirect_to root_path, notice: "Successfully created account"
        else
            # flash[:alert] = "Something was wrong"
            render :new # This will go to views > registrations > new
        end
    end

    private
    # This is a private method that validates the input. It is similar to 'params[:user]', but this one will raise an error if user key does not exist.
    # It first checks that the required input (user key) exists, 
    # then it only permits the three variables
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end