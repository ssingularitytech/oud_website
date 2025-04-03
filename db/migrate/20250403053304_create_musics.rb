class CreateMusics < ActiveRecord::Migration[7.1]
  def change
    create_table :musics do |t|
      t.string :image
      t.string :name
      t.date :date
      t.string :description
      t.string :link

      t.timestamps
    end
  end
end
