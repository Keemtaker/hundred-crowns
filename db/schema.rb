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

ActiveRecord::Schema.define(version: 20171122113158) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "destinations", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "open_hours"
    t.integer  "close_hours"
    t.float    "longitude"
    t.float    "latitude"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "category"
  end

  create_table "menu_items", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "category"
    t.integer  "destination_id"
  end

  add_foreign_key "menu_items", "destinations"
end
