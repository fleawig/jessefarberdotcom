class BookPage < ApplicationRecord
  include RankedModel
  ranks :row_order
  mount_uploader :image, BookPageImageUploader
  validates :page_number, presence: true
end
