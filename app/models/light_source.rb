class LightSource < ActiveRecord::Base
  has_many :sensors_data, class_name: 'SensorDatum'
end
