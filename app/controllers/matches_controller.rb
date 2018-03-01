class MatchesController < ApplicationController
	def index
		# buscamos en el modelo de match por id del usuario actual

		datos = Match.all
		@ids = []
		datos.each do |campos|
			if campos.user_one_id == current_user.id
				@ids << campos.user_two_id
			elsif campos.user_two_id == current_user.id
				@ids << campos.user_one_id
			end
		end
		

			@matches = User.find(@ids)
			 
	end
	
	def chat
		@datos = User.find(params[:user_two])
	end
end

