class AddTimestampsToLightSourcesAndSensorsData < ActiveRecord::Migration
  def change
    add_timestamps :light_sources
    add_timestamps :sensors_data
  end
end
