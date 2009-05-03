# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090426174450) do

  create_table "gardens", :id => false, :force => true do |t|
    t.string   "uuid",          :limit => 36
    t.string   "name",          :limit => 128
    t.string   "user_id",       :limit => 36
    t.integer  "position"
    t.date     "planting_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "gardens", ["name"], :name => "index_gardens_on_name"
  add_index "gardens", ["planting_date"], :name => "index_gardens_on_planting_date"
  add_index "gardens", ["position"], :name => "index_gardens_on_position"
  add_index "gardens", ["user_id"], :name => "index_gardens_on_user_id"
  add_index "gardens", ["uuid"], :name => "index_gardens_on_uuid", :unique => true

  create_table "plants", :id => false, :force => true do |t|
    t.string   "uuid",                    :limit => 36
    t.string   "type",                    :limit => 10
    t.string   "name"
    t.string   "family"
    t.string   "height"
    t.decimal  "per_square",                            :precision => 3, :scale => 1
    t.boolean  "is_spring",                                                           :default => false
    t.boolean  "is_summer",                                                           :default => false
    t.boolean  "is_fall",                                                             :default => false
    t.boolean  "is_winter",                                                           :default => false
    t.integer  "seed_to_harvest"
    t.integer  "seed_storage"
    t.integer  "indoor_seed_starting"
    t.string   "earliest_planting"
    t.boolean  "is_additional_plantings",                                             :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "plants", ["name"], :name => "index_plants_on_name"
  add_index "plants", ["type"], :name => "index_plants_on_type"
  add_index "plants", ["uuid"], :name => "index_plants_on_uuid", :unique => true

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "squares", :id => false, :force => true do |t|
    t.string   "uuid",          :limit => 36
    t.string   "garden_id",     :limit => 36
    t.integer  "position"
    t.string   "plant_id",      :limit => 36
    t.date     "planting_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "squares", ["garden_id"], :name => "index_squares_on_garden_id"
  add_index "squares", ["plant_id"], :name => "index_squares_on_plant_id"
  add_index "squares", ["planting_date"], :name => "index_squares_on_planting_date"
  add_index "squares", ["position"], :name => "index_squares_on_position"
  add_index "squares", ["uuid"], :name => "index_squares_on_uuid", :unique => true

  create_table "users", :primary_key => "uuid", :force => true do |t|
    t.string   "login",                                  :null => false
    t.string   "first_name",                             :null => false
    t.string   "last_name",                              :null => false
    t.boolean  "is_admin",            :default => false, :null => false
    t.string   "email",                                  :null => false
    t.string   "crypted_password",                       :null => false
    t.string   "password_salt",                          :null => false
    t.string   "persistence_token",                      :null => false
    t.string   "single_access_token",                    :null => false
    t.string   "perishable_token",                       :null => false
    t.integer  "login_count",         :default => 0,     :null => false
    t.integer  "failed_login_count",  :default => 0,     :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["first_name", "last_name"], :name => "index_users_on_first_name_and_last_name"
  add_index "users", ["is_admin"], :name => "index_users_on_is_admin"
  add_index "users", ["login"], :name => "index_users_on_login"
  add_index "users", ["uuid"], :name => "index_users_on_uuid", :unique => true

end
