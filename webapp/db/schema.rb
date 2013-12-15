# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131215174944) do

  create_table "accelerometer_data", force: true do |t|
    t.integer  "log_entry_id"
    t.decimal  "x_max",        precision: 6, scale: 9
    t.decimal  "y_max",        precision: 6, scale: 9
    t.decimal  "z_max",        precision: 6, scale: 9
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accelerometer_data", ["log_entry_id"], name: "index_accelerometer_data_on_log_entry_id"

  create_table "devices", force: true do |t|
    t.string   "name"
    t.string   "version"
    t.string   "serial"
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_entries", force: true do |t|
    t.string   "location"
    t.decimal  "latitude",   precision: 6, scale: 9
    t.decimal  "longitude",  precision: 6, scale: 9
    t.text     "notes"
    t.integer  "device_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "log_entries", ["device_id"], name: "index_log_entries_on_device_id"

  create_table "pages", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
