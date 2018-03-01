class MessagesController < ApplicationController
	def create
		
		Message.create(mensaje_user_one: params[:message],
		user_one_id: current_user.id,
		user_two_id: params[:id])
		
		# byebug
		redirect_to chat_path(user_two: params[:id])
	end
end
