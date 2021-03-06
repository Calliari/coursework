class PostsController < Sinatra::Base

  # this the root from sinatra and the (do end) is the controller
  get "/" do
    "Home"
  end


  #################### starts ############################

  # C R U D
  get "/posts" do # READ use get
    "INDEX"
  end

  get "/posts/new" do # READ new thins use get
    "NEW POSTS"
  end

  get "/posts/:id" do # READ use get
    "Show posts by id"
  end

  post "/posts" do # CREATE use post
    "CREATE"
  end

  put "/posts/:id" do # UPDATE use put
    "Show posts by id updated"
  end

  get "/posts/:id/edit" do # READ edit use get
    "Edited"
  end

  delete "/posts/:id" do # DELETE using  delete
    "its deleted"
  end



end
