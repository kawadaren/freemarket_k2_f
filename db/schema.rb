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

ActiveRecord::Schema.define(version: 20191010045011) do

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

end
