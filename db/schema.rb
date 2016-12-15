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

ActiveRecord::Schema.define(version: 20161215105121) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adopts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "animal_id"
    t.float    "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_adopts_on_user_id", using: :btree
  end

  create_table "animals", force: :cascade do |t|
    t.string   "species"
    t.string   "location"
    t.string   "image"
    t.string   "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "adopt_id"
    t.text     "habitat"
    t.index ["adopt_id"], name: "index_animals_on_adopt_id", using: :btree
  end

  create_table "names", force: :cascade do |t|
    t.string   "email"
    t.string   "login"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "adopts", "users"
  add_foreign_key "animals", "adopts"
end
