class SessionsController < ApplicationController


  skip_before_action :require_login, only: [:new, :create, :destroy]


	def new

		@message = session[:message]

		render :login

	end

	def create
		# get the user email ans the passowrd
		email = session_params[:email]
		password = session_params[:password]

		# check the user is in the database
		user = User.find_by({email: email, password: password})


		if user
			#log the user
			session[:user_id] = user.id
			redirect_to :pictures
		else
			# incorrect password
			session[:message] = "Incorrect Message"
			redirect_to new_session_path

		end

	end

	def destroy
		session[:user_id] = false
		redirect_to new_session_path

	end

private
	def session_params
		params.require(:session).permit(:email, :password)
	end

end
