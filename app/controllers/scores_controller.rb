class ScoresController < ApplicationController
	def index
		@scores = Score.all
	end

	def show_by_genre
		@genre = Genre.find_by(params[:id])

		@sub_genres = @genre.sub_genres
		@quizzes = @sub_genres.first.quizzes

		quiz_id_array = []
		@quizzes.each do |q|
			quiz_id_array << q.id
		end

		@scores = Score.where(quiz_id: quiz_id_array.first) #NOT CORRECT
	end

	def show_by_subgenre
		@sub_genre = SubGenre.find_by(params[:id])
		@quizzes = @sub_genre.quizzes

		quiz_id_array = []
		@quizzes.each do |q|
			quiz_id_array << q.id
		end

		@scores = Score.where(quiz_id: quiz_id_array.first) #NOT CORRECT
	end
end
