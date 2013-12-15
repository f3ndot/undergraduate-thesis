class LogEntry < ActiveRecord::Base
  belongs_to :device
  has_one :accelerometer_datum
end
