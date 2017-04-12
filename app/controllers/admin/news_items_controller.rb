class Admin::NewsItemsController < ApplicationController
  before_action :authenticate_admin!

  def new
    @news_item = NewsItem.new
  end
  
  def create
    @news_item = NewsItem.create(news_item_params)
    redirect_to admin_news_items_path, notice: 'New news item was added successfully.'
  end

  def index
    @news_items = NewsItem.all
  end

  private

  def news_item_params
    params.require(:news_item).permit(:headline, :content)
  end
end
