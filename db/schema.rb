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

ActiveRecord::Schema.define(version: 20191104065038) do

  create_table "addresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",    null: false
    t.string   "postal",     null: false
    t.string   "region",     null: false
    t.string   "city",       null: false
    t.string   "address",    null: false
    t.string   "building",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_addresses_on_user_id", using: :btree
  end

  create_table "images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "url",        null: false
    t.integer  "item_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_images_on_item_id", using: :btree
  end

  create_table "items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "price"
    t.integer  "category_id"
    t.integer  "state_id"
    t.integer  "size_id"
    t.integer  "bland_id"
    t.integer  "report_id"
    t.integer  "region_id"
    t.integer  "shipping_data_id"
    t.integer  "shipping_method_id"
    t.integer  "shipping_charge_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "image"
    t.text     "explanation",        limit: 65535
    t.index ["bland_id"], name: "index_items_on_bland_id", using: :btree
    t.index ["category_id"], name: "index_items_on_category_id", using: :btree
    t.index ["region_id"], name: "index_items_on_region_id", using: :btree
    t.index ["report_id"], name: "index_items_on_report_id", using: :btree
    t.index ["shipping_charge_id"], name: "index_items_on_shipping_charge_id", using: :btree
    t.index ["shipping_data_id"], name: "index_items_on_shipping_data_id", using: :btree
    t.index ["shipping_method_id"], name: "index_items_on_shipping_method_id", using: :btree
    t.index ["size_id"], name: "index_items_on_size_id", using: :btree
    t.index ["state_id"], name: "index_items_on_state_id", using: :btree
  end

  create_table "regions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "prefecture_id"
    t.string   "city"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                                null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "phone_number",                        null: false
    t.integer  "birthday",                            null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "image"
    t.string   "payment"
    t.integer  "selling",                             null: false
    t.integer  "profit",                              null: false
    t.integer  "point",                               null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "nickname",                            null: false
    t.string   "name_kana",                           null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "item_images", "items"
  add_foreign_key "addresses", "users"
  add_foreign_key "images", "items"
end
