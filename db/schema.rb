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

ActiveRecord::Schema.define(version: 20140725052349) do

  create_table "contacts", force: true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "company"
    t.string   "title"
    t.string   "personal_email"
    t.string   "work_email"
    t.string   "cell_phone"
    t.string   "work_phone"
    t.string   "website"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "country"
    t.string   "linkedin"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "undergraduate_school"
    t.string   "undergraduate_degree"
    t.date     "undergraduate_year"
    t.string   "graduate_school"
    t.string   "graduate_degree"
    t.date     "graduate_year"
    t.date     "birthday"
    t.boolean  "married"
    t.integer  "kids"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resources", force: true do |t|
    t.string   "description"
    t.string   "link"
    t.string   "category"
    t.string   "notes"
    t.string   "status"
    t.string   "duration"
    t.string   "level"
    t.string   "format"
    t.date     "completed_date_1"
    t.date     "complete_date_2"
    t.string   "resource"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "password_digest",        default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "authentication_token"
    t.string   "slug"
    t.integer  "invited_by_id"
    t.integer  "invitation_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["slug"], name: "index_users_on_slug", using: :btree

end
