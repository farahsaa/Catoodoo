# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_30_155325) do

  create_table "cats", force: :cascade do |t|
    t.string "bio"
    t.string "email"
    t.string "name", null: false
    t.index ["email"], name: "index_cats_on_email"
    t.index ["name"], name: "index_cats_on_name"
  end

  create_table "schedules", force: :cascade do |t|
    t.datetime "scheduled_at"
    t.datetime "completed_at"
    t.integer "task_id"
    t.integer "cat_id"
    t.index ["cat_id", "scheduled_at"], name: "index_schedules_on_cat_id_and_scheduled_at"
    t.index ["cat_id"], name: "index_schedules_on_cat_id"
    t.index ["task_id"], name: "index_schedules_on_task_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.string "state"
  end

end
