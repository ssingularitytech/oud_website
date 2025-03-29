class CreateUpcomingEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :upcoming_events do |t|
      t.string :title
      t.string :date
      t.string :venue
      t.string :ensemble
      t.string :city
      t.string :link

      t.timestamps
    end
  end
end
