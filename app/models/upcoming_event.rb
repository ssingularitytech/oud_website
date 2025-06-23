class UpcomingEvent < ApplicationRecord
  validates :date, presence: true
  
  # Updated scopes with explicit date comparison
  scope :upcoming, -> { where('DATE(date) >= ?', Date.current).order(date: :asc) }
  scope :past, -> { where('DATE(date) < ?', Date.current).order(date: :desc) }
  default_scope { order(id: :desc) }
  has_rich_text :link
end
