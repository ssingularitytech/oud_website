class CreateUpcomingBgImages < ActiveRecord::Migration[7.1]
  def change
    create_table :upcoming_bg_images do |t|
      t.string :image

      t.timestamps
    end
  end
end
