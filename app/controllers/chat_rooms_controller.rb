class ChatRoomsController < ApplicationController
	before_action :authorize
	def index
		@rooms=	ChatRooom.all()
	end

	def create

	end

end
