class ApplicationController < ActionController::Base
  before_action :set_landings

  private

  def set_landings
    @landings = Landing.all
  end
end
