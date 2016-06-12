class SensorDatum < ActiveRecord::Base
  before_save :set_random_coordinates_if_missing

  self.table_name = "sensors_data"
  belongs_to :light_source
end
