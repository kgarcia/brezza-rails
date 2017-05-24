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

ActiveRecord::Schema.define(version: 20170523191951) do

  create_table "allies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.string   "description"
    t.string   "t1"
    t.string   "t2"
    t.string   "t3"
    t.string   "t4"
    t.string   "t5"
    t.string   "f1"
    t.string   "f2"
    t.string   "f3"
    t.string   "f4"
    t.string   "f5"
    t.string   "f6"
    t.string   "c1"
    t.string   "c2"
    t.string   "c3"
    t.string   "c4"
    t.string   "c5"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "benefits", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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

  create_table "mensajes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nombre"
    t.string   "correo"
    t.text     "mensaje",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "sliders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.string   "description"
    t.string   "color"
    t.string   "buttontext"
    t.string   "link"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "fondo_file_name"
    t.string   "fondo_content_type"
    t.integer  "fondo_file_size"
    t.datetime "fondo_updated_at"
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
  end

  create_table "steps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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

  create_table "testimonials", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "quote",      limit: 65535
    t.string   "autor"
    t.string   "date"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "whoares", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "description"
    t.string   "brezzastory"
    t.string   "mission"
    t.string   "vision"
    t.string   "history"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
