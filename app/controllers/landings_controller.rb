class LandingsController < ApplicationController

  def index
   @new_releases = NewRelease.all
   @upcoming_events = UpcomingEvent.order(date: :asc).limit(5)
   @videos = Video.order(created_at: :desc).limit(1)
  end

  def about
  end  

end
