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

ActiveRecord::Schema.define(version: 2020_03_20_145118) do

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "email"
    t.string "phone"
    t.integer "birth_day"
    t.integer "birth_month"
    t.integer "birth_year"
  end

  create_table "experience_fields", force: :cascade do |t|
    t.integer "one"
    t.integer "two"
    t.integer "three"
    t.integer "four"
    t.integer "five"
    t.integer "six"
    t.integer "seven"
    t.integer "eight"
    t.integer "nine"
  end

  create_table "expression_fields", force: :cascade do |t|
    t.integer "cerebral"
    t.integer "physics"
    t.integer "emotive"
    t.integer "intuitive"
  end

  create_table "life_maps", force: :cascade do |t|
    t.integer "action1"
    t.integer "action2"
    t.integer "action3"
    t.integer "action4"
  end

  create_table "spirals", force: :cascade do |t|
    t.integer "physics"
    t.integer "emotional"
    t.integer "mental"
    t.integer "creative"
    t.integer "path"
  end

  create_table "themes", force: :cascade do |t|
    t.integer "client_id"
    t.integer "spiral_id"
    t.integer "expression_field_id"
    t.integer "experience_field_id"
    t.integer "life_map_id"
    t.index ["client_id"], name: "index_themes_on_client_id"
    t.index ["experience_field_id"], name: "index_themes_on_experience_field_id"
    t.index ["expression_field_id"], name: "index_themes_on_expression_field_id"
    t.index ["life_map_id"], name: "index_themes_on_life_map_id"
    t.index ["spiral_id"], name: "index_themes_on_spiral_id"
  end

end
