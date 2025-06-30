class SubscribesController < ApplicationController
  def new
    @subscribe = Subscribe.new
  end

  def create
    @subscribe = Subscribe.new(subscribe_params)
    if @subscribe.save
      redirect_to contacts_path, notice: "Subscribed successfully!"
    else
      redirect_back fallback_location: root_path, alert: "Subscription failed."
    end
  end

  private

  def subscribe_params
    params.require(:subscribe).permit(:email)
  end
end