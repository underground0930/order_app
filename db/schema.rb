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

ActiveRecord::Schema[7.0].define(version: 2024_03_30_113926) do
  create_table "drinks", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.integer "price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_details", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "drink_id", null: false
    t.bigint "order_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["drink_id"], name: "index_order_details_on_drink_id"
    t.index ["order_id"], name: "index_order_details_on_order_id"
  end

  create_table "order_units", charset: "utf8mb4", force: :cascade do |t|
    t.string "code", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_order_units_on_code", unique: true
  end

  create_table "orders", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "order_unit_id", null: false
    t.decimal "total_without_tax", precision: 10
    t.decimal "total_with_tax", precision: 10
    t.datetime "paid_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_unit_id"], name: "index_orders_on_order_unit_id"
  end

  add_foreign_key "order_details", "drinks"
  add_foreign_key "order_details", "orders"
  add_foreign_key "orders", "order_units"
end
