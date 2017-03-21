class UsersController < Sinatra::Base

# sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  #  http://localhost:9292/users = views/users/index.erb
  set :views, Proc.new { File.join(root, "views/users") }


	# this the root from sinatra and the (do end) is the controller
	get "/" do # READ use get

	  @users = $users

	  erb :index
	end

	# this is the form page to create a new user
	get "/form" do # READ use get

	   erb :form
	end

	# this is the person page to display the person by id
	get "/:id" do

	    id = params[:id].to_i

	    @user = $users[id]

	  erb :person
	end


end


