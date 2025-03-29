class UpcomingEventsController < ApplicationController
  def index
    @upcoming_events = UpcomingEvent.all
  end

  def create
    @upcoming_events = UpcomingEvents.new(landing_params)
    if @upcoming_events.save
      redirect_to upcoming_events_path, notice: "Landing created successfully!"
    else
      render :new
    end
  end
  
  private
  
  def landing_params
    params.require(:upcoming_events).permit(:title, :date, :venue, :ensemble, :city, :link)
  end
  
end
