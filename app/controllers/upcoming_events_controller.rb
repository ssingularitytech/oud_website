class UpcomingEventsController < ApplicationController

  def index
    if params[:upcoming_ensemble].present?
      # Search in upcoming events
      @upcoming_events = UpcomingEvent.where("date >= ? AND LOWER(ensemble) LIKE ?", Date.today, "%#{params[:upcoming_ensemble].downcase}%")
    else
      @upcoming_events = UpcomingEvent.where("date >= ?", Date.today)
    end

    if params[:past_ensemble].present?
      # Search in past events
      @past_events = UpcomingEvent.where("date < ? AND LOWER(ensemble) LIKE ?", Date.today, "%#{params[:past_ensemble].downcase}%")
    else
      @past_events = UpcomingEvent.where("date < ?", Date.today)
    end
    Rails.logger.debug "Upcoming Events: #{@upcoming_events.map(&:date)}"
    Rails.logger.debug "Past Events: #{@past_events.map(&:date)}"
  end




  def create
    @upcoming_event = UpcomingEvent.new(event_params)
    
    respond_to do |format|
      if @upcoming_event.save
        format.html { redirect_to upcoming_events_path, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @upcoming_event.errors, status: :unprocessable_entity }
      end
    end
  end
  
  private
  
  def event_params
    params.require(:upcoming_event).permit(:title, :date, :venue, :ensemble, :city, :link)
  end
end
