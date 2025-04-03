class Audio < ApplicationRecord
  belongs_to :music
  has_one_attached :audio
end
