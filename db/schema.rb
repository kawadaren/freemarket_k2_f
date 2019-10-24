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

ActiveRecord::Schema.define(version: 20191022142944) do

  create_table "item_images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "url",        null: false
    t.integer  "item_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_item_images_on_item_id", using: :btree
  end

  create_table "items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",               null: false
    t.integer  "price",              null: false
    t.integer  "category_id",        null: false
    t.integer  "state_id",           null: false
    t.integer  "size_id",            null: false
    t.integer  "bland_id",           null: false
    t.integer  "report_id",          null: false
    t.integer  "region_id",          null: false
    t.integer  "shipping_data_id",   null: false
    t.integer  "shipping_method_id", null: false
    t.integer  "shipping_charge_id", null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image"
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
    t.string   "name",       null: false
    t.integer  "region_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_regions_on_region_id", using: :btree
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
end
