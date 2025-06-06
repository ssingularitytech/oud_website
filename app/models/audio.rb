class Audio < ApplicationRecord
  belongs_to :music
  has_one_attached :audio
  default_scope { order(id: :asc) }
end
