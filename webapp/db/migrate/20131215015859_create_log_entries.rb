class CreateLogEntries < ActiveRecord::Migration
  def change
    create_table :log_entries do |t|
      t.string :location
      t.decimal :latitude, :precision => 6, :scale => 9
      t.decimal :longitude, :precision => 6, :scale => 9
      t.text :notes
      t.belongs_to :device, index: true

      t.timestamps
    end
  end
end
