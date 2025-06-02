class NewReleasesController < ApplicationController
  def index
    @new_releases = NewRelease.all
  end

  def create
    @new_release = NewRelease.new(new_release_params)
    if @new_release.save
      redirect_to @new_release, notice: 'New release was successfully created.'
    else
      render :new
    end
  end

  private

  def new_release_params
    params.require(:new_release).permit(:image, :name, :date, :youtube_url)
  end
end
