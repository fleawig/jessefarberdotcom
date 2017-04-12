class Admin::BookPagesController < ApplicationController
  before_action :authenticate_admin!

  def new
    @book_page = BookPage.new
  end

  def create
    @book_page = BookPage.create(book_page_params)
    redirect_to admin_book_pages_path, notice: 'New book page was added successfully.'
  end

  def index
    @book_pages = BookPage.all
  end

  private

  def book_page_params
    params.require(:book_page).permit(:book_title, :page_number, :year, :dimensions, :portfolio)
  end
end
