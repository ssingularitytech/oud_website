class AddLinkToPresses < ActiveRecord::Migration[7.1]
  def change
    add_column :presses, :link, :string
  end
end
