# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140303181955) do

  create_table "prices", force: true do |t|
    t.integer  "sale_id"
    t.float    "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "marca"
    t.string   "nome"
    t.string   "medida"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "produtos_supermercados", force: true do |t|
    t.integer "supermercado_id"
    t.integer "produto_id"
  end

  create_table "sales", force: true do |t|
    t.integer  "supermarket_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "current_price"
    t.float    "old_price"
  end

  create_table "supermarkets", force: true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
