class Music < ApplicationRecord
  has_many :audios, dependent: :destroy  # Correct association
  has_one_attached :image
  accepts_nested_attributes_for :audios, allow_destroy: true
  has_rich_text :description
  default_scope { order(id: :asc) }
end
