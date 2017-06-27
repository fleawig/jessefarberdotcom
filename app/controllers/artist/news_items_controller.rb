class Artist::NewsItemsController < ApplicationController
  def index
    @news_items = NewsItem.all.order(created_at: :desc)
  end
end
