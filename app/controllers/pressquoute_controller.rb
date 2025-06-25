
class PressquouteController < ApplicationController
  def index
    @pressquoutes = Pressquoute.all
  end
  
  def new
    @pressquoute = Pressquoute.new
    @pressquoute.pressquoute.build
  end

  def show
    @pressquoute = Pressquoute.find(params[:id])
  end

  def create
    @pressquoute = Pressquoute.new(project_params)
    if @project.save
      redirect_to @pressquoute, notice: 'Pressquoute was successfully created.'
    else
      render :new
    end
  end

  private

  def project_params
    params.require(:pressquoute).permit(:image, :text)
  end
end
