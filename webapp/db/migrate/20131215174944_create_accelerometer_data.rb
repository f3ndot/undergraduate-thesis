class CreateAccelerometerData < ActiveRecord::Migration
  def change
    create_table :accelerometer_data do |t|
      t.belongs_to :log_entry, index: true
      t.decimal :x_max, :precision => 6, :scale => 9
      t.decimal :y_max, :precision => 6, :scale => 9
      t.decimal :z_max, :precision => 6, :scale => 9

      t.timestamps
    end
  end
end
