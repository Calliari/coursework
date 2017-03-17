class PostsController < Sinatra::Base

  # sets root as the parent-directory of the current file
    set :root, File.join(File.dirname(__FILE__), '..')

    # sets the view directory correctly
    set :views, Proc.new { File.join(root, "views") }

  # dummy data for the homework



  # this the root from sinatra and the (do end) is the controller
  get "/" do
    "404"
    "This is not the correct page, try ''/posts/show' instead! "

    erb :index
  end

  #################### starts ############################

  get "/posts" do # READ use get

    @users = [
      User.new("Jhon", "Smith", "Male", "American", "075 2323 2343", "12 Down Street", "ZTB 2121"),
      User.new("Anna", "Therst", "Female", "Russian", "098 1234 9999", "67 Ghrat hrastsz", "zZtT oIo"),
      User.new("Cesar", "Slovak", "Male", "Greek", "039 777 8989", "23 viltterd", "OTV 551"),
      User.new("Luca", "Sanci", "Male", "Italian", "079 999 5522", "521 Via Martinengo", "IT JONP")
      ]


      # @array = ["A", "B", "C"]
      #
      #
      #
      #  @users = User.new("Jhon", "Smith", "Male", "American", "075 2323 2343", "12 Down Street", "ZTB 2121")

    erb :show
  end


end
