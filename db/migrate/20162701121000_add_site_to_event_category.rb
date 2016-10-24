class AddSiteToEventCategory < ActiveRecord::Migration
  def change
    add_column :spectacle_event_categories, :site_id, :integer
    add_index :spectacle_event_categories, :site_id
  end
end