
class UpcomingBgImageController < ApplicationController
  def index
    @upcomingbgimages = UpcomingBgImage.all

  end


  def create
    @upcomingbgimage = UpcomingBgImage.new(upcomingbgimage_params)
    if @upcomingbgimage.save
      redirect_to @upcomingbgimage, notice: 'Video was successfully created.'
    else
      render :new
    end
  end

  private

  def upcomingbgimage_params
    params.require(:upcomingbgimage).permit(:image)
  end

end