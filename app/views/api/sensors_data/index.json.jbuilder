json.array!(@sensors_data) do |sensor_data|
  json.extract! sensor_data, :raw_data
end
