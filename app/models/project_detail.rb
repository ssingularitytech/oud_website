class ProjectDetail < ApplicationRecord
  belongs_to :project
  has_one_attached :image
  has_rich_text :description
end
