class AddSpectacleEventCategory < ActiveRecord::Migration
  def change
    create_table :spectacle_event_categories, :force => true do |t|
      t.string :title
      t.timestamps
    end

    
    add_column :spectacle_events, :category_id, :integer
    add_index :spectacle_events, :category_id
  end
end