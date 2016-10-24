class TranslateSpectacleEventCategory < ActiveRecord::Migration
  def change
    unless table_exists?(:spectacle_event_category_translations)
    SpectacleEventCategory.create_translation_table!({
      :title => :string
    }, {:migrate_data => true})
    end
  end
end