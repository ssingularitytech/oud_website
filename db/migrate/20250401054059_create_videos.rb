class CreateVideos < ActiveRecord::Migration[7.1]
  def change
    create_table :videos do |t|
      t.string :video
      t.string :name

      t.timestamps
    end
  end
end
