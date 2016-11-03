class Api::V1::UsersController < ApplicationController

	def create
		@user = User.new(user_params)
		if @user.save
			render json: {message:'successfully created', data: @user, status: 201}
		else
			render json: {message:'failure', data: @user.errors, status: 422}
		end
	end

	def edit
		@user = User.find_by_id(params[:id])
	end

	def update
		@user = User.find_by_id(params[:id])
		@user.update(user_params)
		render json: {message:'successfully updated', data: @user, status: 201}
	end

	def show
		# binding.pry
		@user = User.find_by_name(params[:name])
		render json: {message:'successfully showed', data: @user.role, status: 201}
	end	

	private
		def user_params
			params.require(:user).permit(:name, :age, :role, :gender)
		end

end