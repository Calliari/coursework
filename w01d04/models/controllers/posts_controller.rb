class PostsController < Sinatra::Base

  # sets root as the parent-directory of the current file
    set :root, File.join(File.dirname(__FILE__), '..')

    # sets the view directory correctly
    # http://localhost:9292/posts/  =  views/posts/indexerb
    set :views, Proc.new { File.join(root, "views/posts") }


  # this the root from sinatra and the (do end) is the controller
  get "/" do # READ use get

    @articles= $articles

    erb :index
  end

 
  get "/:id" do # READ use get

      id = params[:id].to_i

      @article = $article[id]

  end


end


