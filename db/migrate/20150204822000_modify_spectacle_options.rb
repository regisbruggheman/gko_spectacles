class ModifySpectacleOptions < ActiveRecord::Migration
  def change
    add_column :spectacle_options, :subtitle, :text
    add_column :spectacle_options, :team, :text
    add_column :spectacle_options, :prod, :text
    add_column :spectacle_options, :intro, :text


    unless table_exists?(:spectacle_option_translations)
    SpectacleOption.create_translation_table!({
      :subtitle => :text,
      :team => :text,
      :prod => :text,
      :intro => :text

    }, {:migrate_data => true})
    end
  end
end