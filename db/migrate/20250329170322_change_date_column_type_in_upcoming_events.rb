class ChangeDateColumnTypeInUpcomingEvents < ActiveRecord::Migration[7.1]
  def up
    change_column :upcoming_events, :date, 'date USING date::date'
  end

  def down
    change_column :upcoming_events, :date, :string
  end
end
