class PostsController < Sinatra::Base

  # sets root as the parent-directory of the current file
    set :root, File.join(File.dirname(__FILE__), '..')

    # sets the view directory correctly
    set :views, Proc.new { File.join(root, "views") }

  # dummy data for the homework



  # this the root from sinatra and the (do end) is the controller
  # get "/" do
  #   "404"
  #   "This is not the correct page, try ''/posts/index' instead! "
  #
  # end

  #################### starts ############################
  # this the root from sinatra and the (do end) is the controller
  get "/" do # READ use get

    @users = $users

    erb :index
  end

  get "/new" do # READ use get

     erb :new
  end

  get "/:id" do # READ use get

      id = params[:id].to_i

      @user = $users[id]

    erb :show
  end


end
