class AddImagesToSpectacle < ActiveRecord::Migration
  def change
    add_column :spectacle_options, :images_hd_uid, :string
  end
end