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

ActiveRecord::Schema.define(version: 20150608193344) do

  create_table "accounts", force: :cascade do |t|
    t.date     "beginDate"
    t.date     "expiryDate"
    t.float    "saldo",       limit: 24
    t.float    "rate",        limit: 24
    t.integer  "client_id",   limit: 4
    t.integer  "status_id",   limit: 4
    t.integer  "category_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "bankers", force: :cascade do |t|
    t.string   "firstName",    limit: 255
    t.string   "lastName",     limit: 255
    t.string   "mobileNumber", limit: 255
    t.string   "phoneNumber",  limit: 255
    t.string   "email",        limit: 255
    t.integer  "branch_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "branches", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "street",     limit: 255
    t.string   "streetNr",   limit: 255
    t.string   "zipCode",    limit: 255
    t.string   "city",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "cards", force: :cascade do |t|
    t.string   "PAN",             limit: 255
    t.date     "expiryDate"
    t.float    "limit",           limit: 24
    t.string   "managingCompany", limit: 255
    t.integer  "account_id",      limit: 4
    t.string   "status_id",       limit: 255
    t.integer  "type_id",         limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "shortcut",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "firstName",              limit: 255
    t.string   "lastName",               limit: 255
    t.string   "street",                 limit: 255
    t.string   "streetNr",               limit: 255
    t.string   "zipCode",                limit: 255
    t.string   "city",                   limit: 255
    t.date     "birthDate"
    t.date     "deathDate"
    t.string   "birthPlace",             limit: 255
    t.string   "socialSecurityNumber",   limit: 255
    t.string   "nationality",            limit: 255
    t.string   "mobileNumber",           limit: 255
    t.integer  "banker_id",              limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "clients", ["email"], name: "index_clients_on_email", unique: true, using: :btree
  add_index "clients", ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true, using: :btree

  create_table "statuses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
