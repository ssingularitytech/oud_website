class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end
  
  def new
    @project = Project.new
    @project.project_details.build
  end

  def show
    @project = Project.find(params[:id]) # Ensure a single artist is retrieved
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to @project, notice: 'Project was successfully created.'
    else
      render :new
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, project_details_attributes: [:id, :image, :description, :_destroy])
  end
end
