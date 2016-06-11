class SensorData < ActiveRecord::Base
  self.table_name = "sensors_data"
  belongs_to :light_source
end
