class ModifySpectacleEvents < ActiveRecord::Migration
  def change
    remove_index :spectacle_events, :spectacle_id
    rename_column :spectacle_events, :spectacle_id, :attachable_id
    add_column :spectacle_events, :attachable_type, :string
    add_index :spectacle_events, [:attachable_id, :attachable_type]
    SpectacleEvent.all.each do |event|
        event.attachable_type = "Spectacle"
        event.save!
    end
  end
end