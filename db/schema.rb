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

ActiveRecord::Schema.define(version: 20180426174812) do

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "drivers", default: "--- []\n"
    t.text "riders", default: "--- []\n"
    t.boolean "need_rides"
    t.integer "user_id"
  end

  create_table "events_users", id: false, force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "user_id", null: false
    t.index ["event_id", "user_id"], name: "index_events_users_on_event_id_and_user_id"
    t.index ["user_id", "event_id"], name: "index_events_users_on_user_id_and_event_id"
  end

  create_table "items", force: :cascade do |t|
    t.integer "User_id"
    t.boolean "checkable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.boolean "temporary"
    t.string "category"
    t.boolean "checked_out"
    t.index ["User_id"], name: "index_items_on_User_id"
  end

  create_table "shifts", force: :cascade do |t|
    t.datetime "start"
    t.datetime "end"
    t.integer "manner1_id"
    t.integer "manner2_id"
    t.integer "manner3_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manner1_id"], name: "index_shifts_on_manner1_id"
    t.index ["manner2_id"], name: "index_shifts_on_manner2_id"
    t.index ["manner3_id"], name: "index_shifts_on_manner3_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.string "year"
    t.boolean "manner"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.boolean "voted"
    t.boolean "driver"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
