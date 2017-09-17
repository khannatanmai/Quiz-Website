class GenresController < ApplicationController
	before_action :require_user, only: [:index, :show]
	def index
		@genres = Genre.all
	end

	def show
		@genre = Genre.find(params[:id])
		@sub_genres = @genre.sub_genres
	end
end
