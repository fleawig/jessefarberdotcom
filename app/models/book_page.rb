class BookPage < ApplicationRecord
  include RankedModel
  ranks :row_order
  mount_uploader :image, BookPageImageUploader
  validates :page_number, presence: true
  validates_uniqueness_of :page_number, scope: :book_title
  extend FriendlyId
  friendly_id :book_title, use: :slugged

  def book
    unsorted_book = BookPage.where(book_title: book_title)
    unsorted_book.sort_by { |book_page| book_page.page_number.to_i }
  end

  def noncover
    book.drop(1)
  end
end
