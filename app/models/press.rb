class Press < ApplicationRecord
  has_one_attached :image
  default_scope { order(id: :desc) }
end
