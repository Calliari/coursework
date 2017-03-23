class FollowersController < ApplicationController
	def create
    

    # get the two users
 user  = User.find 1

 user = User.find params[:user_id]

#make th follower
 user.followers.push follower 

 
redirect_to params[:return_to]
    
  end

  def destroy


  end
end
