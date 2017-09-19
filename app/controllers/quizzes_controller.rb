class QuizzesController < ApplicationController
	before_action :require_user, only: [:show]

	def show
		@quiz = Quiz.find(params[:id])
		@questions = @quiz.questions

		@score = Score.new(quiz_id: @quiz.id, user_id: session[:user_id], score: 0)
		@score.save
	end
end
