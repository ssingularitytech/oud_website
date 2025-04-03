class MusicsController < ApplicationController

  def index
    @musics = Music.includes(:audios).all
  end

  def show
    @music = Music.find(params[:id])
  end
  

  def create
    @music = Music.new(music_params)
    if @music.save
      redirect_to @music, notice: "Music created successfully!"
    else
      render :new
    end
  end
  
  private
  
  def music_params
    params.require(:music).permit(:name, :date, :description, :link, :image, audios: [])
  end
  
end
