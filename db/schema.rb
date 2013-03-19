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

ActiveRecord::Schema.define(:version => 20130227210724) do

  create_table "artworks", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "asset_file_name"
    t.string   "asset_content_type"
    t.integer  "asset_file_size"
    t.datetime "asset_updated_at"
  end

  add_index "artworks", ["user_id"], :name => "index_artworks_on_user_id"

  create_table "artworks_galleries", :id => false, :force => true do |t|
    t.integer "artwork_id"
    t.integer "gallery_id"
  end

  add_index "artworks_galleries", ["artwork_id", "gallery_id"], :name => "index_artworks_galleries_on_artwork_id_and_gallery_id"

  create_table "comments", :force => true do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "artwork_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["artwork_id"], :name => "index_comments_on_artwork_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "galleries", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.string   "email",                             :null => false
    t.string   "encrypted_password", :limit => 128, :null => false
    t.string   "confirmation_token", :limit => 128
    t.string   "remember_token",     :limit => 128, :null => false
    t.string   "role"
    t.string   "name"
    t.date     "birthday"
    t.text     "biography"
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
