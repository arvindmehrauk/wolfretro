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

ActiveRecord::Schema[7.0].define(version: 2023_07_01_224452) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ideas", force: :cascade do |t|
    t.integer "retro_id"
    t.text "topic"
    t.string "template_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "retro_topics", force: :cascade do |t|
    t.bigint "retro_id_id"
    t.text "topic"
    t.string "template_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["retro_id_id"], name: "index_retro_topics_on_retro_id_id"
  end

  create_table "retros", force: :cascade do |t|
    t.string "name"
    t.text "context"
    t.integer "team"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
