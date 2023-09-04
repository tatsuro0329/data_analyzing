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

ActiveRecord::Schema[7.0].define(version: 2023_09_04_072453) do
  create_table "at_bats", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "player_id", null: false
    t.bigint "game_id", null: false
    t.integer "turn_number", null: false
    t.integer "out_count_id", null: false
    t.integer "runner_id", null: false
    t.integer "position_id"
    t.integer "batting_id", null: false
    t.integer "pitch_type_id", null: false
    t.integer "pitch_course_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_at_bats_on_game_id"
    t.index ["player_id"], name: "index_at_bats_on_player_id"
  end

  create_table "games", charset: "utf8mb4", force: :cascade do |t|
    t.date "date", null: false
    t.string "vs", null: false
    t.string "stadium", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "at_bats", "games"
  add_foreign_key "at_bats", "players"
end
