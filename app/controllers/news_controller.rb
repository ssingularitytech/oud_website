class NewsController < ApplicationController
  def index
    @news = News.all
  end

  def show
    @news = News.find(params[:id]) # Ensure a single artist is retrieved
  end
  

  def create
    @news = News.new(news_params)
    if @news.save
      redirect_to news_path, notice: "Your message has been sent."
    else
      render :new
    end
  end

  private 
  def news_params
    params.require(:news).permit(:news_image, :news_date, :news_name, :news_description, :news_link)
  end
  
end



