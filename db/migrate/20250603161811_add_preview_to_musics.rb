class AddPreviewToMusics < ActiveRecord::Migration[7.1]
  def change
    add_column :musics, :preview, :string
  end
end
