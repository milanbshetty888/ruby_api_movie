class Api::V1::MoviesController < ApplicationController

	def create
		@movie = Movie.new(movie_params)
			if @movie.save
				render json: {message:'successfully created', data: @movie, status: 201}
			else
				render json: {message:'failure', data: @movie.errors, status: 422}
			end
		end

		def edit
				@movie = Movie.find_by_id(params[:id])
		end

	def update
		@movie = Movie.find_by_id(params[:id])
		@movie.update(movie_params)
		render json: {message:'successfully updated', data: @movie, status: 201}
	end

	def destroy
		@movie = Movie.find_by_id(params[:id])
		@movie.destroy
		render json: {message:'Successfully deleted', data: @movie, status: 201}
	end

	def show
		@movie = Movie.find_by_title(params[:title])
		render json: {message:'successfully showed', data: @movie, status: 201}
	end

	private
		def movie_params
			params.require(:movie).permit(:title, :year, :rating, :language, :actor, :director, :producer)
		end

end