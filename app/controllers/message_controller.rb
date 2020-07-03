class MessageController < ApplicationController

	def index
		@messages=Message.where(chat_room_id: params[:id])
		@room=params[:id]

	end

	def create
		@room=params[:id]
		@message=Message.new(message_params)
		@message.user= User.find(params[:message][:user])
		@message.chat_room= ChatRoom.find(params[:message][:chat_room])
		if !@message.save
			flash[:login_errors]=['invalid credentials']
		end
		
		respond_to do |format|
			format.js
			format.html {render '_form'}	
		end
	end

	

	private 
		def message_params
			params.require(:message).permit(:body)
		end

end
