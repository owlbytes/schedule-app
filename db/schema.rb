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

ActiveRecord::Schema.define(:version => 20131029155632) do

  create_table "campuses", :force => true do |t|
    t.string   "campus_name"
    t.string   "location"
    t.string   "campus_photo"
    t.text     "about"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "courses", :force => true do |t|
    t.text     "course_name"
    t.date     "date"
    t.time     "time"
    t.text     "about"
    t.string   "course_photo"
    t.integer  "room_id"
    t.integer  "instructor_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "courses_users", :force => true do |t|
    t.integer "course_id"
    t.integer "user_id"
  end

  create_table "rooms", :force => true do |t|
    t.string   "room_name"
    t.integer  "seats"
    t.string   "room_photo"
    t.string   "room_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "address"
    t.string   "email"
    t.text     "user_photo"
    t.text     "background_info"
    t.string   "role"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
