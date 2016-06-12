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

ActiveRecord::Schema.define(version: 20160612032031) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "light_sources", force: :cascade do |t|
    t.string   "name"
    t.jsonb    "configuration_data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sensors_data", force: :cascade do |t|
    t.integer  "light_source_id"
    t.jsonb    "raw_data",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sensors_data", ["light_source_id"], name: "index_sensors_data_on_light_source_id", using: :btree

  add_foreign_key "sensors_data", "light_sources"
end
