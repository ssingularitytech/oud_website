class AddNameToPhotos < ActiveRecord::Migration[7.1]
  def change
    add_column :photos, :name, :string
  end
end
