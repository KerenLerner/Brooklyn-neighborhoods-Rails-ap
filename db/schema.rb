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

ActiveRecord::Schema.define(version: 20160108200347) do

  create_table "neighborhoods", force: :cascade do |t|
    t.string   "name"
    t.integer  "rent"
    t.boolean  "park"
    t.boolean  "activities"
    t.string   "architecture"
    t.integer  "commute"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "seekers", force: :cascade do |t|
    t.string   "seeker_name"
    t.integer  "seeker_rent"
    t.boolean  "seeker_park"
    t.boolean  "seeker_activities"
    t.string   "seeker_architecture"
    t.integer  "seeker_commute"
    t.string   "seeker_username"
    t.string   "seeker_password"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
