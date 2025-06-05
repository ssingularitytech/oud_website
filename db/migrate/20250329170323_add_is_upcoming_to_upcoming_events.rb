class AddIsUpcomingToUpcomingEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :upcoming_events, :is_upcoming, :boolean, default: true
  end
end