json.array!(@water_frequencies) do |water_frequency|
  json.extract! water_frequency, :id, :value, :frequency, :observation, :plant_type_id, :climate_zone_id
  json.url water_frequency_url(water_frequency, format: :json)
end
