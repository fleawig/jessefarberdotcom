class RnlIssue < ApplicationRecord
  mount_uploader :cover_image, CoverImageUploader
  mount_uploader :background_image, BackgroundImageUploader
end
