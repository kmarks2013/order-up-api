# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_22_221030) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dishes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.float "price"
    t.bigint "resturant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resturant_id"], name: "index_dishes_on_resturant_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "resturant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resturant_id"], name: "index_favorites_on_resturant_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "order_dishes", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.bigint "dish_id", null: false
    t.string "modifications"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dish_id"], name: "index_order_dishes_on_dish_id"
    t.index ["order_id"], name: "index_order_dishes_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "resturant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resturant_id"], name: "index_orders_on_resturant_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "resturants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "text"
    t.bigint "user_id", null: false
    t.bigint "resturant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resturant_id"], name: "index_reviews_on_resturant_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "username"
    t.string "password_digest"
    t.string "address"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "dishes", "resturants"
  add_foreign_key "favorites", "resturants"
  add_foreign_key "favorites", "users"
  add_foreign_key "order_dishes", "dishes"
  add_foreign_key "order_dishes", "orders"
  add_foreign_key "orders", "resturants"
  add_foreign_key "orders", "users"
  add_foreign_key "reviews", "resturants"
  add_foreign_key "reviews", "users"
end
