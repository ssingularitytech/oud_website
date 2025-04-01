class PressController < ApplicationController
  def index
    @press = Press.all
  end
  

  def create
    @press = Press.new(project_params)
    if @press.save
      redirect_to @press, notice: 'Press was successfully created.'
    else
      render :new
    end
  end

  private

  def press_params
    params.require(:press).permit(:image, :date, :name, :link)
  end
end