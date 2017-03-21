require "sinatra"
require_relative "controllers/posts_controller.rb"
require_relative "controllers/user_controller.rb"
require_relative "controllers/static_controller.rb"
require_relative "classes/user.rb"

  map "/users" do
    use UsersController
  end

  map "/posts/" do
    use PostsController
  end

run StaticController


$users = [
  User.new("Jhon", "Smith", "Male", "American", "075 2323 2343", "12 Down Street", "ZTB 2121"),
  User.new("Anna", "Therst", "Female", "Russian", "098 1234 9999", "67 Ghrat hrastsz", "zZtT oIo"),
  User.new("Cesar", "Slovak", "Male", "Greek", "039 777 8989", "23 viltterd", "OTV 551"),
  User.new("Luca", "Sanci", "Male", "Italian", "079 999 5522", "521 Via Martinengo", "IT JONP")
  ]
