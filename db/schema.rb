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

ActiveRecord::Schema.define(version: 2018_12_02_232429) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "answer_upvotes", force: :cascade do |t|
    t.string "upvoter_type"
    t.bigint "upvoter_id"
    t.integer "answer_id"
    t.integer "score", default: 0
    t.integer "integer", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["upvoter_type", "upvoter_id"], name: "index_answer_upvotes_on_upvoter_type_and_upvoter_id"
  end

  create_table "answers", force: :cascade do |t|
    t.string "content"
    t.integer "expert_id"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "upvotes", default: 0
  end

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

  create_table "expert_tags", force: :cascade do |t|
    t.integer "tag_id"
    t.integer "expert_id"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "job_title"
    t.string "phone"
    t.string "email"
    t.string "company"
    t.string "password_digest"
    t.string "profile_picture_url", default: "https://via.placeholder.com/851x351?text=851x351+Banner%20+Photo"
    t.string "cover_photo_url", default: "https://via.placeholder.com/851x351?text=Banner%20+Photo"
  end

  create_table "question_upvotes", force: :cascade do |t|
    t.string "upvoter_type"
    t.bigint "upvoter_id"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "score", default: 0
    t.index ["upvoter_type", "upvoter_id"], name: "index_question_upvotes_on_upvoter_type_and_upvoter_id"
  end

  create_table "questions", force: :cascade do |t|
    t.integer "user_id"
    t.string "question"
    t.string "question_details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "upvotes", default: 0
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "expert_id"
    t.integer "user_id"
    t.integer "score"
    t.string "title"
    t.string "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tag_questions", force: :cascade do |t|
    t.integer "tag_id"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
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
