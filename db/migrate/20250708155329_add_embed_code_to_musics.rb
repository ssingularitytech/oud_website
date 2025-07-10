class AddEmbedCodeToMusics < ActiveRecord::Migration[7.1]
  def change
    add_column :musics, :embed_code, :text
  end
end
