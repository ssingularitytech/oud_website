class LandingsController < ApplicationController

  def index
   @landings = Landing.all
   @new_releases = NewRelease.all
   @upcoming_events = UpcomingEvent.order(date: :asc).limit(5)
   @videos = Video.order(created_at: :desc).limit(1)
  end
  
  def create
    @landing = Landing.new(landing_params)
    if @landing.save
      redirect_to @landing, notice: 'Landing Image was successfully created.'
    else
      render :new
    end
  end

  private

  def landing_params
    params.require(:landing).permit(:image, :text,)
  end

end
