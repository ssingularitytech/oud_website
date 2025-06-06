class Photo < ApplicationRecord
  has_one_attached :photo
  default_scope { order(id: :desc) }
end
