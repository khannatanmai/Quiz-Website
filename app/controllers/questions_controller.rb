class QuestionsController < ApplicationController
	before_action :require_user, only: [:show]

	def show
		@question = Question.find(params[:id])
		@answers = @question.answers 

		
	end

	def submit #Checking if answer is correct
		@question = Question.find(params[:id])
		@answers = @question.answers

		@is_answer_correct = 1 #Assume Answer is correct

		@answers.each do |ans|
			puts ans.correct

			symbol = ("a" + ans.id.to_s).to_sym
			puts params[symbol]
			if ans.correct == true && params[symbol] != '1'
				@is_answer_correct = 0 #Answer for question is NOT correct
				break
			elsif ans.correct == false && params[symbol] == '1'
				@is_answer_correct = 0 #Answer for question is NOT correct
				break
			end 
		end

		if @is_answer_correct==1
			puts "**************CORRECT ANSWER****************"
		else
			puts "*************INCORRECT ANSWER****************"
		end

		current_order = @question.order

		@last_question = 0
		@quiz_id = @question.quiz_id

		if current_order >= Question.where(quiz_id: @quiz_id).last.order
			@last_question = 1	
		end

		@next_question = Question.where(quiz_id: @quiz_id).where(order: current_order+1).first
		
	end
end
