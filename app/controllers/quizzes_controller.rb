class QuizzesController < ApplicationController
	before_action :require_user, only: [:show]

	def show
		@quiz = Quiz.find(params[:id])
		@questions = @quiz.questions
	end
end
