class UsersController < ApplicationController
	before_action :require_admin, only: [:index, :show, :edit, :update, :destroy]

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id 
			redirect_to '/genres'
		else
			redirect_to '/signup'
		end
	end

 # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show
  	@user = User.find(params[:id])
  end

  # GET /users/1/edit
  def edit
  	@user = User.find(params[:id])
  end

  # PATCH/PUT /users/1
  def update
  	@user = User.find(params[:id])

    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  def destroy
  	@user = User.find(params[:id])

    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully deleted.' }
      format.json { head :no_content }
    end
  end

	private

	def user_params
		params.require(:user).permit(:name, :email, :password)
	end

end
