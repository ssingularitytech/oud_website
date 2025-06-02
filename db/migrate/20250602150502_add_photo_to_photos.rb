class AddPhotoToPhotos < ActiveRecord::Migration[7.1]
  def change
    add_column :photos, :photo, :string
  end
end
