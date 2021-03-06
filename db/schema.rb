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

ActiveRecord::Schema.define(version: 20180208104739) do

  create_table "events", force: :cascade do |t|
    t.text "description"
    t.datetime "date"
    t.string "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "creator_id"
    t.integer "attendee_id"
    t.index ["attendee_id"], name: "index_events_on_attendee_id"
    t.index ["creator_id"], name: "index_events_on_creator_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "events_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "event_id", null: false
    t.index [nil, nil], name: "index_events_users_on_attendee_id_and_attended_event_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "event_id"
    t.integer "created_event_id"
    t.integer "attanded_event_id"
    t.index ["attanded_event_id"], name: "index_users_on_attanded_event_id"
    t.index ["created_event_id"], name: "index_users_on_created_event_id"
    t.index ["event_id"], name: "index_users_on_event_id"
  end

end
