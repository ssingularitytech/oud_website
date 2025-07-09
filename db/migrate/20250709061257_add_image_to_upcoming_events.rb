class AddImageToUpcomingEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :upcoming_events, :image, :string
  end
end
