module Admin::BookPagesHelper
  def page_number_or_cover(book_page)
    return unless book_page.portfolio?
    if book_page.page_number.zero?
      'Front'
    elsif book_page.page_number == book_page.book.maximum(:page_number)
      'Back'
    else
      book_page.page_number
    end
  end
end
