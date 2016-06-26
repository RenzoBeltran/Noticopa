# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160626005735) do

  create_table "match_details", force: :cascade do |t|
    t.integer  "goals"
    t.boolean  "time_extra"
    t.integer  "goals_pk"
    t.integer  "match_id"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "match_details", ["match_id"], name: "index_match_details_on_match_id"
  add_index "match_details", ["team_id"], name: "index_match_details_on_team_id"

  create_table "matches", force: :cascade do |t|
    t.date     "date"
    t.string   "stadium"
    t.integer  "tournament_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "referee"
    t.string   "name"
    t.string   "resultado"
  end

  add_index "matches", ["tournament_id"], name: "index_matches_on_tournament_id"

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image_url"
  end

  create_table "tournaments", force: :cascade do |t|
    t.string   "name"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
