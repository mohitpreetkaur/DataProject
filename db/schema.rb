ActiveRecord::Schema[7.1].define(version: 2024_11_4_145347) do
  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "imageURL"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "films", force: :cascade do |t|
    t.string "name"
    t.integer "character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_films_on_character_id"
  end

  create_table "likeds", force: :cascade do |t|
    t.integer "character_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_likeds_on_character_id"
    t.index ["user_id"], name: "index_likeds_on_user_id"
  end

  create_table "tv_shows", force: :cascade do |t|
    t.string "name"
    t.integer "character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_tv_shows_on_character_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "video_games", force: :cascade do |t|
    t.string "name"
    t.integer "character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_video_games_on_character_id"
  end

  add_foreign_key "films", "characters"
  add_foreign_key "likeds", "characters"
  add_foreign_key "likeds", "users"
  add_foreign_key "tv_shows", "characters"
  add_foreign_key "video_games", "characters"
end
