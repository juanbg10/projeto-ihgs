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

ActiveRecord::Schema.define(version: 2019_05_06_175959) do

  create_table "chairs", force: :cascade do |t|
    t.integer "number"
    t.integer "occupant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "patron_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "zip_code", limit: 8, null: false
    t.string "city", limit: 100, null: false
    t.string "state", limit: 2, null: false
    t.string "neighborhood", limit: 100, null: false
    t.string "public_place", limit: 100, null: false
    t.integer "number", null: false
    t.string "complement", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "occupants", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "chair_id"
  end

  create_table "patrons", force: :cascade do |t|
    t.string "name"
    t.text "bio"
    t.date "date_of_born"
    t.date "date_of_death"
    t.integer "chair_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.text "description"
    t.string "image"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "photo"
    t.text "bio"
    t.string "office"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "registers", force: :cascade do |t|
    t.string "full_name", null: false
    t.string "phone", null: false
    t.string "celphone", null: false
    t.string "cpf", null: false
    t.date "birth", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "kind"
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
