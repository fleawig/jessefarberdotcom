module Artist::BookPagesHelper
  def page_number_or_cover(book_page)
    return "#{book_page.page_number.to_i + 1} of #{book_page.book.length}" if book_page.portfolio?
    if book_page.page_number.to_i.zero?
      'Front'
    elsif book_page.page_number.to_i.equal?(book_page.book.last.page_number.to_i)
      'Back'
    else
      "Page #{book_page.page_number}"
    end
  end
end
