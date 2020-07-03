class UsersController < ApplicationController
    

    def index
        
    end

    #REGISTER A NEW USER
    def register

    end

    def create
    		user = User.new(user_params)
    		if user.save
    			redirect_to "/"
    		else
    			flash[:register_errors]=user.errors.full_messages
    		end
    end
    
  
    private
    	def user_params
    		 params.require(:user).permit(:Email,:Password)
    	end
end
