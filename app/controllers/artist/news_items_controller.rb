class Artist::NewsItemsController < ApplicationController

  def index
    @news_items = NewsItem.all.order(updated_at: :desc)
  end
  
end
