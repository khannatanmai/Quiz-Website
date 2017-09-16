class SubGenresController < ApplicationController
	def show
		@sub_genre = SubGenre.find(params[:id])
		@quizzes = @sub_genre.quizzes
	end
end
