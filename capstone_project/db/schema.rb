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

ActiveRecord::Schema.define(version: 2022_01_25_235634) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pokemon_abilities", force: :cascade do |t|
    t.bigint "pokemon_id"
    t.bigint "ability_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ability_id"], name: "index_pokemon_abilities_on_ability_id"
    t.index ["pokemon_id"], name: "index_pokemon_abilities_on_pokemon_id"
  end

  create_table "pokemon_trainers", force: :cascade do |t|
    t.bigint "pokemon_id"
    t.bigint "trainer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pokemon_id"], name: "index_pokemon_trainers_on_pokemon_id"
    t.index ["trainer_id"], name: "index_pokemon_trainers_on_trainer_id"
  end

  create_table "pokemon_types", force: :cascade do |t|
    t.bigint "pokemon_id"
    t.bigint "type_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pokemon_id"], name: "index_pokemon_types_on_pokemon_id"
    t.index ["type_id"], name: "index_pokemon_types_on_type_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "weight"
    t.integer "height"
    t.integer "nat_number"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
