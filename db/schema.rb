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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130717160020) do

  create_table "carts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "designers", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "line_items", :force => true do |t|
    t.integer  "pins_id"
    t.integer  "cart_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pins", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "user_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image_remote_url"
    t.string   "Designer"
    t.string   "price"
    t.string   "retail_value"
    t.string   "size"
    t.string   "condition"
    t.text     "lender_notes"
    t.string   "color"
    t.string   "material"
    t.string   "classification"
  end

  add_index "pins", ["Designer"], :name => "index_pins_on_Designer"
  add_index "pins", ["classification"], :name => "index_pins_on_classification"
  add_index "pins", ["color"], :name => "index_pins_on_color"
  add_index "pins", ["condition"], :name => "index_pins_on_condition"
  add_index "pins", ["lender_notes"], :name => "index_pins_on_lender_notes"
  add_index "pins", ["material"], :name => "index_pins_on_material"
  add_index "pins", ["price"], :name => "index_pins_on_price"
  add_index "pins", ["retail_value"], :name => "index_pins_on_retail_value"
  add_index "pins", ["size"], :name => "index_pins_on_size"
  add_index "pins", ["user_id"], :name => "index_pins_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.text     "description"
    t.string   "rolable_type"
    t.integer  "rolable_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
