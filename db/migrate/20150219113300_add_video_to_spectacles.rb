class AddVideoToSpectacles < ActiveRecord::Migration
  def change
    add_column :spectacle_options, :video_url, :string
    add_column :spectacle_options, :video_hd_uid, :string
  end
end