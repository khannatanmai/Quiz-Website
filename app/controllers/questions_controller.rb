class QuestionsController < ApplicationController
	before_action :require_user, only: [:show, :submit]

	def show
		@question = Question.find(params[:id])
		@answers = @question.answers 
		@quiz_id = @question.quiz_id

		current_quiz = Quiz.find_by_id(@quiz_id).id
		current_user_id = session[:user_id]
		@current_score = Score.find_by(params[quiz_id: current_quiz, user_id: current_user_id])
	
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

		@quiz_id = @question.quiz_id

		current_quiz = Quiz.find_by_id(@quiz_id)
		current_user_id = session[:user_id]
		@current_score = Score.find_by(params[quiz_id: current_quiz, user_id: current_user_id])
	

		score = @current_score.score

		if @is_answer_correct==1
			puts "**************CORRECT ANSWER****************"
			@current_score.update(quiz_id: current_quiz, user_id: current_user_id, score: score+10)
			@current_score.save

		else
			puts "*************INCORRECT ANSWER****************"
		end

		current_order = @question.order

		@last_question = 0
		

		if current_order >= Question.where(quiz_id: @quiz_id).last.order
			@last_question = 1	
		end

		@next_question = Question.where(quiz_id: @quiz_id).where(order: current_order+1).first
		
	end
end
