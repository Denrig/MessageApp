class ChatRoomsController < ApplicationController
	before_action :authorize
	def index
		@rooms=	ChatRoom.all()
	end

	def new

	end

	def create
		room=ChatRoom.new(room_params)
		if room.save
			redirect_to '/chat_rooms'
		else
			flash[:register_errors]=room.errors.full_messages
		end
	end

	def show
		@messages= Message.all()		
	end

	def addMessage
		message=Message.new(message_params)
		if message.save
			redirect_to '/chat_rooms/1'
		else
			flash[:register_errors]=message.errors.full_messages
		end
	end

	private 
		def room_params
			params.require(:room).permit(:title,:desc)
		end

		def message_params
			params.require(:message).permit(:body,:user)
		end

end
