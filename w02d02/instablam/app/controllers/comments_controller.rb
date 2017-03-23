class CommentsController < ApplicationController
  def create
  comment = Comment.new(comment_params)


 user = User.find 1
  picture = Picture.find params[:picture_id]
  comment.picture = picture
  comment.user = user
  comment.save

    redirect_to picture
  end

  private
    def comment_params
      params.require(:comment).permit(:body)

    end
end
