class StaticController < Sinatra::Base

   get "/" do
     "Homepage statics controller"
   end

   get "/:id" do
     "SHOW #{params[:id]}"
   end

 end
