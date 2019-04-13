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

ActiveRecord::Schema.define(version: 2019_04_13_203301) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authorizations", force: :cascade do |t|
    t.integer "practioner_id"
    t.integer "user_id"
    t.string "status", default: "pending"
  end

  create_table "checkups", force: :cascade do |t|
    t.bigint "practioner_id"
    t.bigint "user_id"
    t.string "diagnosis"
    t.string "treatment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["practioner_id"], name: "index_checkups_on_practioner_id"
    t.index ["user_id"], name: "index_checkups_on_user_id"
  end

  create_table "practioners", force: :cascade do |t|
    t.string "name"
    t.string "company"
    t.integer "authorization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "dob"
    t.string "email"
    t.integer "authorization_id"
    t.integer "checkup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "checkups", "practioners"
  add_foreign_key "checkups", "users"
end
