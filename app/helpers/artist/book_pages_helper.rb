module Artist::BookPagesHelper
  def page_number_or_cover(book_page)
    return "#{book_page.page_number + 1} of #{book_page.book.length}" if book_page.portfolio?
    if book_page.page_number.zero?
      'Front'
    elsif book_page.page_number == book_page.book.maximum(:page_number)
      'Back'
    else
      "Page #{book_page.page_number}"
    end
  end
end
