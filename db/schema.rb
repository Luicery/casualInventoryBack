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

ActiveRecord::Schema.define(version: 2021_03_24_133117) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "phone"
  end

  create_table "items", force: :cascade do |t|
    t.integer "amount"
    t.string "name"
    t.integer "restock"
    t.bigint "stock_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "lastSupplier"
    t.boolean "autoRestock"
    t.index ["stock_id"], name: "index_items_on_stock_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "address"
    t.string "phone"
    t.string "manager"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_supplier"
    t.index ["company_id"], name: "index_locations_on_company_id"
  end

  create_table "stocks", force: :cascade do |t|
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_stocks_on_location_id"
  end

  add_foreign_key "items", "stocks"
  add_foreign_key "locations", "companies"
  add_foreign_key "stocks", "locations"
end
