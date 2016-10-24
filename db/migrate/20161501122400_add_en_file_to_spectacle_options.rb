class AddEnFileToSpectacleOptions < ActiveRecord::Migration
  def change
    add_column :spectacle_options, :file_doc_en_uid, :string
    add_column :spectacle_options, :file_press_en_uid, :string
    add_column :spectacle_options, :file_tech_en_uid, :string
  end
end