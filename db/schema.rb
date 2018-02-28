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

ActiveRecord::Schema.define(version: 20180228020025) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goals", force: :cascade do |t|
    t.bigint "category_id"
    t.string "item"
    t.string "interval"
    t.float "value", default: 0.0
    t.float "goal", default: 0.0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["category_id"], name: "index_goals_on_category_id"
    t.index ["user_id"], name: "index_goals_on_user_id"
  end

  create_table "matches", force: :cascade do |t|
    t.string "platformId"
    t.string "gameId"
    t.integer "champion"
    t.integer "queue"
    t.integer "season"
    t.string "timestamp"
    t.string "role"
    t.string "lane"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "timeline"
    t.index ["gameId"], name: "index_matches_on_gameId"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "summoner_name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_id"
    t.integer "profile_icon_id"
    t.index ["account_id"], name: "index_users_on_account_id"
  end

  add_foreign_key "goals", "categories"
  add_foreign_key "goals", "users"
end
