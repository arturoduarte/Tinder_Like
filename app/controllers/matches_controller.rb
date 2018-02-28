class MatchesController < ApplicationController
	def index
		@matches = Match.all
		User.find(Match.last.user_two_id).email
	end


	def chat
		@datos = User.find(params[:user_two])
	end

end

