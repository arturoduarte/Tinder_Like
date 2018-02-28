class UsersController < ApplicationController
	before_action :authenticate_user!
	def search
		# @user = User.order("RANDOM()").first
		#  render json: @user.to_json
		@user = User.where.not(id: Interaction.all().select(:user_two)).order("RANDOM()").first
		# @user = User.all.last
	end
end
