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

ActiveRecord::Schema.define(version: 20170513070623) do

  create_table "benefits", force: :cascade do |t|
    t.string   "description"
    t.string   "title1"
    t.string   "desc1"
    t.string   "icon1"
    t.string   "title2"
    t.string   "desc2"
    t.string   "icon2"
    t.string   "title3"
    t.string   "desc3"
    t.string   "icon3"
    t.string   "title4"
    t.string   "desc4"
    t.string   "icon4"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "mensajes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "correo"
    t.text     "mensaje"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "steps", force: :cascade do |t|
    t.string   "title1"
    t.string   "description1"
    t.string   "title2"
    t.string   "description2"
    t.string   "title3"
    t.string   "description3"
    t.string   "title4"
    t.string   "description4"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "testimonials", force: :cascade do |t|
    t.text     "quote"
    t.string   "autor"
    t.string   "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "phone"
    t.string   "address"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "whoares", force: :cascade do |t|
    t.string   "description"
    t.string   "brezzastory"
    t.string   "mission"
    t.string   "vision"
    t.string   "history"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
