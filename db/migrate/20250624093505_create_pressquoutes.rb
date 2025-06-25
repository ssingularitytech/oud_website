class CreatePressquoutes < ActiveRecord::Migration[7.1]
  def change
    create_table :pressquoutes do |t|
      t.string :image

      t.timestamps
    end
  end
end
