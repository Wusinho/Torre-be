# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_26_025525) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "developers", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_developers_on_user_id"
  end

  create_table "devlangs", force: :cascade do |t|
    t.string "language"
    t.string "fluency"
    t.bigint "developer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["developer_id"], name: "index_devlangs_on_developer_id"
  end

  create_table "devstrs", force: :cascade do |t|
    t.string "name"
    t.string "proficiency"
    t.bigint "developer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["developer_id"], name: "index_devstrs_on_developer_id"
  end

  create_table "joblangs", force: :cascade do |t|
    t.string "language"
    t.string "fluency"
    t.bigint "post_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["post_id"], name: "index_joblangs_on_post_id"
  end

  create_table "jobstrs", force: :cascade do |t|
    t.string "name"
    t.string "proficiency"
    t.bigint "post_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["post_id"], name: "index_jobstrs_on_post_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "postid"
    t.string "name"
    t.string "currency"
    t.string "salary"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "responsabilities"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "developers", "users"
  add_foreign_key "devlangs", "developers"
  add_foreign_key "devstrs", "developers"
  add_foreign_key "joblangs", "posts"
  add_foreign_key "jobstrs", "posts"
  add_foreign_key "posts", "users"
end
