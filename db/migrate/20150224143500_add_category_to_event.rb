class AddCategoryToEvent < ActiveRecord::Migration
  def change
    add_column :spectacle_events, :category, :string
    remove_column :spectacle_events, :attachable_type
    rename_column :spectacle_events, :attachable_id, :spectacle_id
  end
end