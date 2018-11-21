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

ActiveRecord::Schema.define(version: 2018_11_21_000108) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "educations", force: :cascade do |t|
    t.integer "expert_id"
    t.string "school"
    t.string "degree"
    t.string "field_of_study"
    t.string "description"
    t.string "start_year"
    t.string "end_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experts", force: :cascade do |t|
    t.string "user_name"
    t.string "full_name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zip_code"
    t.string "website_url"
    t.string "about"
    t.string "profile_picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "job_title"
    t.string "phone"
    t.string "email"
    t.string "company"
  end

  create_table "questions", force: :cascade do |t|
    t.integer "user_id"
    t.string "question"
    t.string "question_details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "email"
    t.string "password_digest"
    t.string "revenue_range"
    t.string "size_range"
    t.string "profile_picture"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "work_experiences", force: :cascade do |t|
    t.string "title"
    t.string "company"
    t.string "location"
    t.string "start_month"
    t.string "start_year"
    t.string "end_month"
    t.string "end_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "expert_id"
    t.string "description"
  end

end
