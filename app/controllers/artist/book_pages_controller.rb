class Artist::BookPagesController < ApplicationController
  
  def index
    @book_pages = BookPage.all
  end

end
