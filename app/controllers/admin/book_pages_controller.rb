class Admin::BookPagesController < ApplicationController
  before_action :authenticate_admin!

  def new
    @book_page = BookPage.new
  end
end
