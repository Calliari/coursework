class PostsController < Sinatra::Base

  # sets root as the parent-directory of the current file
    set :root, File.join(File.dirname(__FILE__), '..')

    # sets the view directory correctly
    # http://localhost:9292/posts/  =  views/posts/indexerb
    set :views, Proc.new { File.join(root, "views/posts") }


  # this the root from sinatra and the (do end) is the controller
  get "/" do # READ use "get verb"

    @posts = PostModel.all
    $id = params[:id].to_i



     erb :index

  end
 
  get "/:id" do # READ use "get verb"

    $id = params[:id].to_i

     @posts = PostModel.find($id)

       erb :search

  end

    get "/:id/edit" do

    @id  = params[:id].to_i

    #load the required post from tha "Database"
     @post = PostModel.find(@id)

    erb :edit

  end

  delete "/:id" do

    id = params[:id].to_i

    PostModel.delete(id)

    redirect "/posts"

  end






end
############################################################

# PostgreSQL "SELECT * FROM post;" Display all data from post
# PostgreSQL "SELECT * FROM post WHERE id = 3;" Display post by ID

############################################################
  # conn = PG.connect(dbname: "blog")
  # @a = conn.exec("SELECT * FROM post")
  # @a.each do |a|
  #   puts "#{a["name"]}"
  # end

############################################################
  # conn = PG.connect(dbname: "blog")
  # @a = conn.exec("SELECT * FROM post WHERE id = 2")
  # @a.each do |a|
  #   puts "#{a}" 
  #   puts "#{a["name"]}"
  # end
############################################################


  #  def index
  #   @tags = Tag.all
  # end

  # def show
  #   @tag = Tag.find(params[:id])
  # end

  # def destroy
  #   @tag = Tag.find(params[:id]).destroy
  #   redirect_to :back
  # end