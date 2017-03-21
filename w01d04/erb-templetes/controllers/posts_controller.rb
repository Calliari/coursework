class PostsController < Sinatra::Base

  # sets root as the parent-directory of the current file
    set :root, File.join(File.dirname(__FILE__), '..')

    # sets the view directory correctly
    set :views, Proc.new { File.join(root, "views") }

# CREATE
  get "/" do
  @posts = $posts
    erb :index
  end

  get "/new" do
     erb :new
  end

  get "/:id/edit" do

    @id  = params[:id].to_i

    #load the required post from tha "Database"
    @post = $posts[@id]

    erb :edit

  end

  get "/:id" do

    id  = params[:id].to_i
    @post = $posts[id]

    erb :show
  end

# dummy data for testing 2
  get "/articles" do
    @articles = $articles
    erb :show1
  end

  post "/" do
    #create new posts
    post = Post.new params[:name], params[:body]

    #save post ro "Database" (push to array)
    $posts.push post

    #redirect
    redirect "/posts"
  end

  put "/:id" do

    # load the object we want to update
      id  = params[:id].to_i

      # dummy data
      post = $posts[id]

      # put the changes in to the object
      post.name = params[:name]
      post.body = params[:body]

    # save to the database
    $posts[id] = post

    # redirect to anothe page (index)
    #redirect "/posts/#{id}"
    redirect "/posts/"

  end

  delete "/:id" do

    id = params[:id].to_i

    $posts.delete_at id

    redirect "/posts"

  end





end
