class InteractionsController < ApplicationController
	def create
# guardo los likes o unlikes dentro de interacion	
		Interaction.create(
		like: params[:like],
		user_one_id: current_user.id,
		user_two_id: params[:user_two_id])
		
		if params[:like] = true
			dato = Interaction.where(like: true, user_two_id: current_user.id, user_one_id: params[:user_two_id])
# byebug
			if dato.exists?
				Match.create(like: params[:like],
				user_one_id: current_user.id,
				user_two_id: params[:user_two_id])
			end
		end
		
		redirect_to search_path

	end
	
end