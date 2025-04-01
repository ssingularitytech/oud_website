class CreatePresses < ActiveRecord::Migration[7.1]
  def change
    create_table :presses do |t|
      t.string :image
      t.date :date
      t.string :name

      t.timestamps
    end
  end
end
