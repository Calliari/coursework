class UsersController < ApplicationController


  skip_before_action :require_login, only: [:new, :create]


	def create

		user = User.create  user_params 

		redirect_to :pictures

	end

	def new
		render 'users/register'
	end


	private
	def user_params

		 params.require(:user).permit(:email , :name, :password)
		
	end

end
