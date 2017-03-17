class PostsController < Sinatra::Base

  # sets root as the parent-directory of the current file
    set :root, File.join(File.dirname(__FILE__), '..')

    # sets the view directory correctly
    set :views, Proc.new { File.join(root, "views") }


  get "/" do
    # dummy data for testing
    @posts = $posts


    erb :index
  end

  get "/articles" do
    # dummy data for testing 2

    @articles = [
      Article.new("Article - Ruby", "Some post text about RUBYSome post text about RUBYSome post text about RUBY", "05/03/2017"),
      Article.new("Article - javascript", "Some post text about javascriptSome post text about javascriptSome post text about javascript", "10/03/2016"),
      Article.new("Article - C#", "Some post text about C# tSome post text about C# Some post text about C#", "10/12/2015")
    ]

    erb :show1
  end


  get "/new" do
    # dummy data for testing
    "Hello"


    # erb :new
  end



end
