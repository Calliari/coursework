class StaticController < Sinatra::Base

   get "/" do
     "Home"
   end

   get "/:id" do
     "SHOW #{params[:id]}"
   end

 end
