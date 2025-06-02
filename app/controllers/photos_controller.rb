class PhotosController < ApplicationController
  def index
  end

  def show
  end
end


class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end


  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to @photo, notice: 'Video was successfully created.'
    else
      render :new
    end
  end

  private

  def video_params
    params.require(:photo).permit(:photo,)
  end
end