class UpcomingEvent < ApplicationRecord
  default_scope { order(id: :asc) }
end
