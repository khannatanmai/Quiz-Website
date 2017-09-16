class QuestionsController < ApplicationController
	def show
		@question = Question.find(params[:id])

		current_order = @question.order

		@last_question = 0

		if current_order >= Question.where(quiz_id: @question.quiz_id).last.order
			@last_question = 1	
		end

		@next_question = Question.where(quiz_id: @question.quiz_id).where(order: current_order+1).first
		
	end
end
