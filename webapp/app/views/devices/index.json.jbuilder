json.array!(@devices) do |device|
  json.extract! device, :name, :version, :serial, :number
  json.url device_url(device, format: :json)
end
