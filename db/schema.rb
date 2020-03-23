ActiveRecord::Schema.define(version: 2020_03_22_173044) do

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "email"
    t.string "phone"
    t.integer "birth_day"
    t.integer "birth_month"
    t.integer "birth_year"
    t.string "name1"
    t.string "name2"
    t.string "name3"
    t.string "surname1"
    t.string "surname2"
    t.string "surname3"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spirals", force: :cascade do |t|
    t.integer "physics"
    t.integer "emotional"
    t.integer "mental"
    t.integer "creative"
    t.integer "path"
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_spirals_on_client_id"
  end

end
