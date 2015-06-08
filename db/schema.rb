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

ActiveRecord::Schema.define(version: 20150606093230) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "locations", force: :cascade do |t|
    t.integer   "location_type"
    t.string    "name"
    t.text      "blurb"
    t.text      "dog_guidelines"
    t.integer   "dog_status"
    t.geometry  "geo_access_points",  limit: {:srid=>0, :type=>"multi_point"}
    t.geometry  "geo_fence",          limit: {:srid=>0, :type=>"polygon"}
    t.string    "image_file_name"
    t.string    "image_content_type"
    t.integer   "image_file_size"
    t.datetime  "image_updated_at"
    t.geography "latlon",             limit: {:srid=>4326, :type=>"point", :geographic=>true}
  end

  create_table "reports", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "location_id"
    t.integer  "animal_id"
    t.text     "blurb"
    t.geometry "geolocation",        limit: {:srid=>0, :type=>"point"}
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "submitted_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_names"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.string   "api_key"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
