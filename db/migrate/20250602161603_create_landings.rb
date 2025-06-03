class CreateLandings < ActiveRecord::Migration[7.1]
  def change
    create_table :landings do |t|
      t.string :image
      t.string :text

      t.timestamps
    end
  end
end
