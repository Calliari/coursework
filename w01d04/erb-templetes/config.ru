require "sinatra"
require_relative "controllers/posts_controller.rb"
require_relative "controllers/user_controller.rb"
require_relative "controllers/static_controller.rb"
require_relative "classes/post.rb"
require_relative "classes/article.rb"


map "/users" do
  use UsersController
end

map "/posts" do
  use PostsController
end

run StaticController


$posts = [
  Post.new("Post 1", "Some post text"),
  Post.new("Post 2", "Some post text 2")
]
