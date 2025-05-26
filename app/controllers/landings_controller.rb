class LandingsController < ApplicationController
  def index
   @upcoming_events = UpcomingEvent.order(date: :asc).limit(5)
  end

  def about
  end  

end
