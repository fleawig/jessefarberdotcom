class NewsItem < ApplicationRecord
  mount_uploader :image, NewsImageUploader
end
