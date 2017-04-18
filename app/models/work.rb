class Work < ApplicationRecord
  scope :two_d, -> { where(work_type: "2D") }
  scope :three_d, -> { where(work_type: "3D") }
end
