class Project < ApplicationRecord
  has_many :project_details, dependent: :destroy
  accepts_nested_attributes_for :project_details, allow_destroy: true
  default_scope { order(id: :desc) }
end
