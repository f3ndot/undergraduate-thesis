json.array!(@log_entries) do |log_entry|
  json.extract! log_entry, :location, :latitude, :longitude, :notes, :device_id, :accelerometer_data
  json.url log_entry_url(log_entry, format: :json)
end
