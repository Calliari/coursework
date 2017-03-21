class PostsController < Sinatra::Base

  # sets root as the parent-directory of the current file
    set :root, File.join(File.dirname(__FILE__), '..')

    # sets the view directory correctly
    # http://localhost:9292/posts/  =  views/posts/indexerb
    set :views, Proc.new { File.join(root, "views/posts") }


  # this the root from sinatra and the (do end) is the controller

   get "/" do #"/" is router and do is controller . get is a function
     @posts = PostModel.all

     erb :index
  end

  post "/" do #"/" is router and do is controller . get is a function
    "Create Post"
  end

  get "/new_users" do #"/" is router and do is controller . get is a function

  end

  get "/:id/edit" do #"/" is router and do is controller . get is a function
    @id  = params[:id].to_i
    @post = PostModel.find(@id)

    erb :edit
  end

  put "/:id" do #"/" is router and do is controller . get is a function
    
      # put the changes in to the object
      id = params[:id].to_i
      name = params[:name]
      body = params[:body]


       PostModel.update id, name, body
      # end

    redirect "/posts"
  end

  get "/:id/find" do #"/" is router and do is controller . get is a function
    @id  = params[:id].to_i
    @post = PostModel.find(@id)
    
    erb :find
  end

  delete "/:id" do #"/" is router and do is controller . get is a function
    id = params[:id].to_i

    PostModel.delete(id)

    redirect "/posts"
  end


 

end

 ############################################################

# PostgreSQL "SELECT * FROM post;" Display all data from post
# PostgreSQL "SELECT * FROM post WHERE id = 3;" Display post by ID
# PostgreSQL "INSERT INTO post (name,body) VALUES ('Post 4', 'Post 4 - this is another text ');  

################ loop trough all b.name ############################################
 #   @b= PostModel.all
 # <%@b.each_with_index do |b, index|%>
 #  <p>b -<%= b.name  %></p>
 #  <%end%>
 #  <hr>
############## sigle a["name"] no loop ##############################################
 #    @a = PostModel.find(@id)
 #   <%@a.each_with_index do |a, index|%>
 # <p>a -<%= a["name"] %></p>
 # <%end%>

###########################################################
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
  # <%@posts.each do |post|%>
  #       <p> <%= post %>  <%= post.name %>  </p>
  #       <% end %>

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