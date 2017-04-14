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

  def edit
    @book_page = BookPage.find_by_id(params[:id])
    return render_not_found if @book_page.blank?
  end

  def update
    @book_page = BookPage.find_by_id(params[:id])
    return render_not_found if @book_page.blank?
    @book_page.update_attributes(book_page_params)
    if @book_page.valid?
      redirect_to admin_book_pages_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @book_page = BookPage.find_by_id(params[:id])
    return render_not_found if @book_page.blank?
    @book_page.destroy
    redirect_to admin_book_pages_path
  end

  private

  def book_page_params
    params.require(:book_page).permit(:book_title, :page_number, :year, :dimensions, :portfolio)
  end
end
