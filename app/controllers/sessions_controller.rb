class SessionsController < ApplicationController

	def create
		user= User.find_by(email:login_params[:email])
		cookies[:user]=user.id
		if user && user.authenticate(login_params[:password])
			session[:user_id]=user.id
			redirect_to "/chat_rooms"
		else 
			flash[:login_errors]=['invalid credentials']
			redirect_to '/'
		end
	end

	def destroy
		Session.destroy(session[:user_id].id)
		redirect_to "/"
	end

	private
		def login_params
			params.require(:login).permit(:email,:password)
		end
end
