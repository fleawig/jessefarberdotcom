class Work < ApplicationRecord
  include RankedModel
  ranks :row_order, with_same: :work_type

  scope :two_d, (-> { where(work_type: '2D') })
  scope :three_d, (-> { where(work_type: '3D') })
  mount_uploader :image, ImageUploader
end
