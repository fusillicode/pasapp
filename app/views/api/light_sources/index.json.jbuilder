json.array!(@light_sources) do |light_source|
  json.extract! light_source, :id, :configuration_data, :created_at, :updated_at
end
