class RenamePageUrlToVideoUrlInVideos < ActiveRecord::Migration[6.1]
  def change
    rename_column :videos, :page_url, :video_url
  end
end
