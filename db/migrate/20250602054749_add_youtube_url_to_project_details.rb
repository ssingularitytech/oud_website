class AddYoutubeUrlToProjectDetails < ActiveRecord::Migration[7.1]
  def change
    add_column :project_details, :youtube_url, :string
  end
end
