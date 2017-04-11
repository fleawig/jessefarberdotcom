class Admin::NewsItemsController < ApplicationController
  before_action :authenticate_admin!

  def new
    @news_item = NewsItem.new
  end
end
