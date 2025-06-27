class SubscribesController < ApplicationController

  def new
    @subscribe = Subscribe.new
  end
  
  def create
    @subscribe = Subscribe.new(subscribe_params)
    if @subscribe.save
      redirect_to subscribes_path, notice: 'Your message has been sent successfully!'
      flash[:notice] = "Subscribed successfully!"
    else
      flash[:alert] = "Subscription failed."
    end
    redirect_back fallback_location: root_path
  end


  private

  def subscribe_params
    params.require(:subscribe).permit(:email)

  end
end
