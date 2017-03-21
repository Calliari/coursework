require "sinatra"
require_relative "controllers/posts_controller.rb"
require_relative "controllers/user_controller.rb"
require_relative "controllers/static_controller.rb"
require_relative "classes/user.rb"
require_relative "classes/article.rb"
require_relative "classes/post.rb"
require "pg"
require_relative "model/post.rb"



  # # dammy data for the users database
  # $users = [
  #   User.new("Jhon", "Smith", "Male", "American", "075 2323 2343", "12 Down Street", "ZTB 2121"),
  #   User.new("Anna", "Therst", "Female", "Russian", "098 1234 9999", "67 Ghrat hrastsz", "zZtT oIo"),
  #   User.new("Cesar", "Slovak", "Male", "Greek", "039 777 8989", "23 viltterd", "OTV 551"),
  #   User.new("Luca", "Sanci", "Male", "Italian", "079 999 5522", "521 Via Martinengo", "IT JONP")
  #   ]

  # #dammy data for the posts database
  # $posts = [
  #   Post.new("Post 1", "Some post text"),
  #   Post.new("Post 2", "Some post text 2")
  # ]


  # #dammy data for the articles database
  # $articles = [
  #   Article.new("Article - Ruby", "Some post text about RUBYSome post text about RUBYSome post text about RUBY", "05/03/2017"),
  #   Article.new("Article - javascript", "Some post text about javascriptSome post text about javascriptSome post text about javascript", "10/03/2016"),
  #   Article.new("Article - C#", "Some post text about C# tSome post text about C# Some post text about C#", "10/12/2015")
  # ]

   # <% @articles.each_with_index do |article| %>
   #  <h1>Articles</h1>
   #    <h2><%= article.article_name %><h2>
   #    <h3><%= article.body_text %></h3>
   #    <p><%= article.date_posted %></p>
   #  <% end %>

   #method override for "edit.erb"
   # form has that used to edit data needs this overide method to do the job
  use Rack::MethodOverride

  
  map "/users/" do
    use UsersController
  end

  map "/posts/" do
    use PostsController
  end

run StaticController



