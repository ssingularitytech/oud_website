class CreateNewReleases < ActiveRecord::Migration[7.1]
  def change
    create_table :new_releases do |t|
      t.string :image
      t.string :name
      t.date :date

      t.timestamps
    end
  end
end
