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


	private 
		def room_params
			params.require(:room).permit(:title,:desc)
		end

end
