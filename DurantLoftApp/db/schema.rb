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

ActiveRecord::Schema.define(version: 20180415025313) do

  create_table "items", force: :cascade do |t|
    t.integer "User_id"
    t.boolean "checkable"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["User_id"], name: "index_items_on_User_id"
  end

  create_table "shifts", force: :cascade do |t|
    t.integer "start"
    t.integer "end"
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
    t.integer "year"
    t.boolean "manner"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
