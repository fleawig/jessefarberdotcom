class BookPage < ApplicationRecord
  include RankedModel
  ranks :row_order
  mount_uploader :image, BookPageImageUploader
  validates :page_number, presence: true
  validates_uniqueness_of :page_number, scope: :book_title
  extend FriendlyId
  friendly_id :book_title, use: :slugged

  def book
    BookPage.where(book_title: book_title)
  end
end
