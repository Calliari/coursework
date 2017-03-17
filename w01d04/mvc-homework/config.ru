require "sinatra"
require_relative "controllers/posts_controller.rb"
require_relative "controllers/user_controller.rb"
require_relative "controllers/static_controller.rb"
require_relative "classes/user.rb"

  map "/users" do
    use UsersController
  end

  map "/posts" do
    use PostsController
  end

run StaticController
