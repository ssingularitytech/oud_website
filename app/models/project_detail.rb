class ProjectDetail < ApplicationRecord
  belongs_to :project
  has_one_attached :image
end
