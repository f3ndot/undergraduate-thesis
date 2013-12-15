class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :name
      t.string :version
      t.string :serial
      t.string :number

      t.timestamps
    end
  end
end
