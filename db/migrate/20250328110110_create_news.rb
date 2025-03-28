class CreateNews < ActiveRecord::Migration[7.1]
  def change
    create_table :news do |t|
      t.date :news_date
      t.string :news_name
      t.string :news_image
      t.string :news_link

      t.timestamps
    end
  end
end
