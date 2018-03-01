class UsersController < ApplicationController
	before_action :authenticate_user!
	def search
		#  render json: @user.to_json
		array = []
		array = Match.all.pluck(:user_one_id,:user_two_id).flatten.uniq
		@user = 	User.where.not(id: array).order("RANDOM()").first
		#  @user = User.first
	end
end
