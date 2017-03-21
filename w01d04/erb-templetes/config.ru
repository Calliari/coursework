require "sinatra"
require_relative "controllers/posts_controller.rb"
require_relative "controllers/user_controller.rb"
require_relative "controllers/static_controller.rb"
require_relative "classes/post.rb"
require_relative "classes/article.rb"

$posts = [
  Post.new("Post 1", "Some post text"),
  Post.new("Post 2", "Some post text 2")
]


$articles = [
  Article.new("Article - Ruby", "Some post text about RUBYSome post text about RUBYSome post text about RUBY", "05/03/2017"),
  Article.new("Article - javascript", "Some post text about javascriptSome post text about javascriptSome post text about javascript", "10/03/2016"),
  Article.new("Article - C#", "Some post text about C# tSome post text about C# Some post text about C#", "10/12/2015")
]

#method override
use Rack::MethodOverride


map "/users" do
  use UsersController
end

map "/posts" do
  use PostsController
end

run StaticController
