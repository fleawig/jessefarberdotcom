class Work < ApplicationRecord
  include RankedModel
  ranks :row_order, with_same: :work_type

  scope :two_d, (-> { where(work_type: '2D') })
  scope :three_d, (-> { where(work_type: '3D') })
  mount_uploader :image, ImageUploader
  validates_inclusion_of :work_type, in: %w[2D 3D], message: 'Type must be 2D or 3D'
end
