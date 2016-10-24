class AddCustomTitleToEvents < ActiveRecord::Migration
  def change
    add_column :spectacle_events, :custom_title, :string
    add_column :spectacle_events, :description, :text
  end
end