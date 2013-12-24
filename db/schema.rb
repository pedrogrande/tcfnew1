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

ActiveRecord::Schema.define(version: 20131224111436) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.integer  "post_id"
    t.string   "name"
    t.string   "email"
    t.string   "website"
    t.text     "content"
    t.boolean  "publish"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id"

  create_table "coupons", force: true do |t|
    t.string   "code"
    t.string   "free_trial_length"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_enrolments", force: true do |t|
    t.integer  "course_id"
    t.integer  "enrolment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "course_enrolments", ["course_id"], name: "index_course_enrolments_on_course_id"
  add_index "course_enrolments", ["enrolment_id"], name: "index_course_enrolments_on_enrolment_id"

  create_table "course_programme_requests", force: true do |t|
    t.integer  "programme_request_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "course_programme_requests", ["course_id"], name: "index_course_programme_requests_on_course_id"
  add_index "course_programme_requests", ["programme_request_id"], name: "index_course_programme_requests_on_programme_request_id"

  create_table "course_skills", force: true do |t|
    t.integer  "course_id"
    t.integer  "skill_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "course_skills", ["course_id"], name: "index_course_skills_on_course_id"
  add_index "course_skills", ["skill_id"], name: "index_course_skills_on_skill_id"

  create_table "courses", force: true do |t|
    t.string   "title"
    t.string   "lead"
    t.text     "intro"
    t.text     "description"
    t.text     "designed_for"
    t.integer  "price"
    t.string   "duration"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active"
    t.integer  "priority"
    t.string   "slug"
    t.string   "programme"
    t.string   "image"
    t.boolean  "highlight"
    t.integer  "course_order"
  end

  add_index "courses", ["slug"], name: "index_courses_on_slug", unique: true

  create_table "enquiries", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "subject"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enrolments", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "linkedin"
    t.string   "github"
    t.text     "about"
    t.text     "study"
    t.text     "career"
    t.text     "reason"
    t.text     "goals"
    t.boolean  "follow_up"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "title"
    t.string   "lead"
    t.text     "description"
    t.date     "date"
    t.time     "start_time"
    t.time     "finish_time"
    t.boolean  "publish"
    t.boolean  "recurring"
    t.string   "recurring_interval"
    t.integer  "recurring_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "intakes", force: true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "class_days"
    t.time     "start_time"
    t.time     "finish_time"
    t.string   "location"
    t.text     "notes"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "intakes", ["course_id"], name: "index_intakes_on_course_id"

  create_table "plans", force: true do |t|
    t.string   "name"
    t.string   "stripe_id"
    t.float    "price"
    t.string   "interval"
    t.text     "features"
    t.boolean  "highlight"
    t.integer  "display_order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "post_categories", force: true do |t|
    t.integer  "post_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "post_categories", ["category_id"], name: "index_post_categories_on_category_id"
  add_index "post_categories", ["post_id"], name: "index_post_categories_on_post_id"

  create_table "posts", force: true do |t|
    t.string   "title"
    t.string   "lead"
    t.text     "content"
    t.string   "image"
    t.boolean  "publish"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "posts", ["slug"], name: "index_posts_on_slug", unique: true
  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "programme_requests", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.boolean  "follow_up"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], name: "index_roles_on_name"

  create_table "skills", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "subscriptions", force: true do |t|
    t.string   "stripe_id"
    t.integer  "plan_id"
    t.string   "last_four"
    t.integer  "coupon_id"
    t.string   "card_type"
    t.float    "current_price"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", force: true do |t|
    t.string "name"
  end

  create_table "user_profiles", force: true do |t|
    t.integer  "user_id"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "github"
    t.string   "startupcommunity"
    t.string   "google_plus"
    t.text     "bio"
    t.string   "title"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "website"
  end

  add_index "user_profiles", ["user_id"], name: "index_user_profiles_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "slug"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["slug"], name: "index_users_on_slug", unique: true

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"

end
