json.array!(@accelerometer_data) do |accelerometer_datum|
  json.extract! accelerometer_datum, :log_entry_id, :x_max, :y_max, :z_max
  json.url accelerometer_datum_url(accelerometer_datum, format: :json)
end
