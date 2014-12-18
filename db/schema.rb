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

ActiveRecord::Schema.define(version: 20141218170742) do

  create_table "nstu_admissions", force: true do |t|
    t.integer  "roll_no"
    t.string   "name"
    t.string   "father_name"
    t.float    "ssc_gpa",     limit: 24
    t.float    "hsc_gpa",     limit: 24
    t.float    "phy",         limit: 24
    t.float    "che",         limit: 24
    t.float    "math",        limit: 24
    t.float    "bio",         limit: 24
    t.float    "ban_eng",     limit: 24
    t.float    "bangla",      limit: 24
    t.float    "ENG",         limit: 24
    t.float    "ana_abi",     limit: 24
    t.float    "gen_kno",     limit: 24
    t.float    "merit",       limit: 24
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
