class PicturesController < ApplicationController
  def index

  	# load all the pictures
  	@pictures = Picture.all 

  	render :'pictures/index'

  end

  def show

  	# load the picture by id
  	@picture = Picture.find(params[:id])
  

  	render :'pictures/show'

  end

  def destroy

    Picture.destroy params[:id]

    redirect_to :pictures

  end

 def new
 end

  def create

    picture = Picture.create(picture_params)

    redirect_to :pictures
  end

private
  def picture_params
    params.require(:picture).permit(:img , :caption)
  end

end


# 