class AddConfigurationDataToLighSource < ActiveRecord::Migration
  def change
    add_column :light_sources, :configuration_data, :jsonb
  end
end
