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
  
  def edit
    @news_item = NewsItem.find_by_id(params[:id])
    return render_not_found if @news_item.blank?
  end

  def update
    @news_item = NewsItem.find_by_id(params[:id])
    return render_not_found if @news_item.blank?
    @news_item.update_attributes(news_item_params)
    if @news_item.valid?
      redirect_to admin_news_items_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @news_item = NewsItem.find_by_id(params[:id])
    return render_not_found if @news_item.blank?
    @news_item.destroy
    redirect_to admin_news_items_path
  end

  private

  def news_item_params
    params.require(:news_item).permit(:headline, :content, :image)
  end
end
