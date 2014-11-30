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

ActiveRecord::Schema.define(version: 20141124092756) do

  create_table "assigned_tasks", force: true do |t|
    t.integer  "task_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "budget_items", force: true do |t|
    t.integer  "budget_id"
    t.string   "item"
    t.float    "amount"
    t.date     "date_of_occurrence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "budgets", force: true do |t|
    t.date     "as_of"
    t.date     "date_until"
    t.string   "name"
    t.string   "slug",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.string   "slug",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["name"], name: "index_categories_on_name", using: :btree

  create_table "contacts", force: true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.integer  "added_by_id"
    t.string   "slug",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.integer  "user_id"
    t.integer  "contact_id"
    t.string   "personal_email"
    t.string   "work_email"
    t.string   "mobile_phone_number"
    t.string   "work_phone_number"
    t.string   "home_phone_number"
    t.text     "bio"
    t.string   "company"
    t.string   "title"
    t.string   "industries"
    t.string   "website_1"
    t.string   "website_2"
    t.string   "undergraduate_school"
    t.string   "graduate_school"
    t.string   "doctorate_school"
    t.string   "undergraduate_degree"
    t.string   "graduate_degree"
    t.string   "doctorate_degree"
    t.string   "undergraduate_major"
    t.string   "graduate_major"
    t.string   "doctorate_major"
    t.integer  "undergraduate_year"
    t.integer  "graduate_year"
    t.integer  "doctorate_year"
    t.string   "certifications"
    t.string   "interests"
    t.string   "skills"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zipcode"
    t.string   "hometown"
    t.string   "linkedin"
    t.string   "facebook"
    t.string   "instagram"
    t.string   "twitter"
    t.date     "birthday"
    t.boolean  "married"
    t.date     "anniversary"
    t.boolean  "kids"
    t.integer  "number_of_kids"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.string   "status"
    t.string   "url"
    t.string   "git"
    t.text     "description"
    t.datetime "last_activity"
    t.string   "last_user"
    t.string   "last_task_completed"
    t.string   "admin_ids"
    t.string   "slug",                null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["name"], name: "index_projects_on_name", using: :btree

  create_table "resource_completions", force: true do |t|
    t.integer  "resource_id"
    t.integer  "user_id"
    t.float    "completion_percentage", default: 0.0
    t.integer  "units"
    t.string   "unit"
    t.boolean  "completed",             default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resource_notes", force: true do |t|
    t.integer  "user_id"
    t.integer  "resource_id"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resources", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "link"
    t.string   "category"
    t.string   "duration"
    t.integer  "units"
    t.string   "unit"
    t.string   "level"
    t.string   "format"
    t.integer  "user_id"
    t.string   "slug",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "resources", ["name"], name: "index_resources_on_name", using: :btree

  create_table "sites", force: true do |t|
    t.string   "name"
    t.string   "status"
    t.string   "url"
    t.string   "git"
    t.boolean  "primary"
    t.integer  "primary_site_id"
    t.date     "renewal_date"
    t.datetime "last_activity"
    t.string   "last_user"
    t.string   "last_task_completed"
    t.string   "slug",                default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sites", ["name"], name: "index_sites_on_name", using: :btree

  create_table "taggings", force: true do |t|
    t.integer  "tag_id",        null: false
    t.integer  "taggable_id",   null: false
    t.string   "taggable_type", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id", using: :btree
  add_index "taggings", ["taggable_id"], name: "index_taggings_on_taggable_id", using: :btree
  add_index "taggings", ["taggable_type"], name: "index_taggings_on_taggable_type", using: :btree

  create_table "tags", force: true do |t|
    t.string   "name",       null: false
    t.string   "slug",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tags", ["name"], name: "index_tags_on_name", using: :btree

  create_table "tasks", force: true do |t|
    t.string   "name"
    t.integer  "added_by_id"
    t.integer  "category_id"
    t.integer  "to_do_id"
    t.integer  "site_id"
    t.integer  "project_id"
    t.integer  "closed_by_id"
    t.integer  "resource_id"
    t.date     "completed_day"
    t.time     "completed_time"
    t.date     "start_day"
    t.date     "end_day"
    t.time     "start_time"
    t.time     "end_time"
    t.boolean  "public",                  default: true
    t.integer  "duration_expected"
    t.string   "duration_expected_units"
    t.integer  "duration_actual"
    t.string   "duration_actual_units"
    t.string   "priority"
    t.string   "source"
    t.text     "notes"
    t.text     "completion_notes"
    t.string   "recurring"
    t.string   "recurring_time"
    t.boolean  "completed",               default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["completed"], name: "index_tasks_on_completed", using: :btree
  add_index "tasks", ["name"], name: "index_tasks_on_name", using: :btree

  create_table "to_dos", force: true do |t|
    t.integer  "category_id"
    t.string   "name"
    t.integer  "number_of_times_completed"
    t.string   "slug",                      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "to_dos", ["name"], name: "index_to_dos_on_name", using: :btree

  create_table "user_profile_pictures", force: true do |t|
    t.integer  "user_id",    null: false
    t.string   "photo",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_profile_pictures", ["photo"], name: "index_user_profile_pictures_on_photo", using: :btree
  add_index "user_profile_pictures", ["user_id"], name: "index_user_profile_pictures_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "email",                  default: "", null: false
    t.string   "password_digest",        default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "authentication_token"
    t.string   "slug",                                null: false
    t.integer  "invited_by_id"
    t.integer  "invitation_count"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["slug"], name: "index_users_on_slug", using: :btree

end
