class CommentsController < ApplicationController
  def create

  	# load the picture by id
  	comment = Comment.create(comment_params)


  	#get user
  	#we will get this form the logged in user

    user = User.find 1


  	#get picture
    picture = Picture.find(params[:picture_id])

    comment.picture = picture
    comment.user = user

    comment.save

    # Rails magic take us to the picture/show
    redirect_to picture



  	#renderect_to picture/pictureID



  	#render :'pictures/show'



  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end

  def action
  end
end
