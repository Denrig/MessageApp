class UsersController < ApplicationController
    

    def index
    end


    def create
    		@user = User.new(user_params)
    		if @user.save
    			redirect_to "/"
    		else
    			flash[:register_errors]=user.errors.full_messages
    		end
    end
    
    #REGISTER A NEW USER
    def register

    end
    private
    	def user_params
    		 params.permit(:email,:password,:confirm_password)
    	end
end
