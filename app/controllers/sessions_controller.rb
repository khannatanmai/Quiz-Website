class SessionsController < ApplicationController
	def new
	end

	def create
		@user = User.find_by_email(params[:session][:email])

		if @user && @user.authenticate(params[:session][:password]) #If user exists and the password stored is same
			session[:user_id] = @user.id #Add user_id to session
			redirect_to '/genres'
		else
			redirect_to '/login'
			@login
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to '/'
	end
end
