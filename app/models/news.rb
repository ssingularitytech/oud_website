class News < ApplicationRecord
  has_rich_text :news_description
  has_one_attached :news_image
end
