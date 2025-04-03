class CreateAudios < ActiveRecord::Migration[7.1]
  def change
    create_table :audios do |t|
      t.references :music, null: false, foreign_key: true
      t.string :title
      t.string :audio

      t.timestamps
    end
  end
end
