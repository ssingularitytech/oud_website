class Video < ApplicationRecord
  has_one_attached :video
  default_scope { order(id: :desc) }
end
