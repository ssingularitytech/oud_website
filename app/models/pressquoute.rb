class Pressquoute < ApplicationRecord
  has_one_attached :image
  has_rich_text :text
end
