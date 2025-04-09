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

ActiveRecord::Schema[8.0].define(version: 2025_04_09_214846) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "client_plans", force: :cascade do |t|
    t.string "description"
    t.decimal "price"
    t.integer "duration_in_months"
    t.date "payment_date"
    t.date "start_date"
    t.date "end_date"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "provider_plans", force: :cascade do |t|
    t.string "description"
    t.decimal "price"
    t.integer "duration_in_months"
    t.date "payment_date"
    t.date "start_date"
    t.date "end_date"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "providers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "cnpj"
    t.string "cpf"
    t.string "email"
    t.string "phone"
    t.boolean "voiceover"
    t.boolean "acting"
    t.boolean "editing"
    t.boolean "recording"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
