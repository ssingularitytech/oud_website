class AboutusController < ApplicationController
  def index
    @aboutus = About.all
  end

  def create
    @about = About.new(about_params)
    if @about.save
      redirect_to @about, notice: 'About entry was successfully created.'
    else
      render :new
    end
  end

  private

  def about_params
    params.require(:about).permit(:image, :text)
  end

end
