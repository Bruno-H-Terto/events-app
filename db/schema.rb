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

ActiveRecord::Schema[8.0].define(version: 2025_01_18_120256) do
  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "description"
    t.date "start_date"
    t.date "end_date"
    t.string "event_type"
    t.string "location"
    t.integer "participant_limit"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedule_items", force: :cascade do |t|
    t.time "start_time"
    t.integer "lenght"
    t.string "title"
    t.string "description"
    t.string "speaker_email"
    t.integer "schedule_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["schedule_id"], name: "index_schedule_items_on_schedule_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.date "date"
    t.time "start_time"
    t.integer "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_schedules_on_event_id"
  end

  add_foreign_key "schedule_items", "schedules"
  add_foreign_key "schedules", "events"
end
