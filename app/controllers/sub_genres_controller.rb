class SubGenresController < ApplicationController
	before_action :require_user, only: [:show]
	def show
		@sub_genre = SubGenre.find(params[:id])
		@quizzes = @sub_genre.quizzes
	end
end
