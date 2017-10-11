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

ActiveRecord::Schema.define(version: 20171010233640) do

  create_table "comments", force: :cascade do |t|
    t.integer "publisher_id"
    t.integer "user_id"
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["publisher_id"], name: "index_comments_on_publisher_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres_solicitations", force: :cascade do |t|
    t.integer "genre_id"
    t.integer "solicitation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_genres_solicitations_on_genre_id"
    t.index ["solicitation_id"], name: "index_genres_solicitations_on_solicitation_id"
  end

  create_table "genres_stories", force: :cascade do |t|
    t.integer "genre_id"
    t.integer "story_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_genres_stories_on_genre_id"
    t.index ["story_id"], name: "index_genres_stories_on_story_id"
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "homepage_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solicitations", force: :cascade do |t|
    t.integer "publisher_id"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "minimum_wordcount"
    t.integer "maximum_wordcount"
    t.integer "cents_per_word"
    t.integer "cents_flat_paid"
    t.index ["publisher_id"], name: "index_solicitations_on_publisher_id"
  end

  create_table "stories", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "user_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_stories_on_user_id"
  end

  create_table "submissions", force: :cascade do |t|
    t.integer "story_id"
    t.integer "solicitation_id"
    t.datetime "submitted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["solicitation_id"], name: "index_submissions_on_solicitation_id"
    t.index ["story_id"], name: "index_submissions_on_story_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
