class AddYoutubeUrlToNewReleases < ActiveRecord::Migration[7.1]
  def change
    add_column :new_releases, :youtube_url, :string
  end
end
