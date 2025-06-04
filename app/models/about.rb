class About < ApplicationRecord
  has_rich_text :text
  has_one_attached :image
end
