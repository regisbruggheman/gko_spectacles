class AddCustomDateToSpectacleEvent < ActiveRecord::Migration
  def change
    add_column :spectacle_events, :custom_date, :string
  end
end