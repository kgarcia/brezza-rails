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

ActiveRecord::Schema.define(version: 20170621082116) do

  create_table "alliances", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "product_id"
    t.integer  "user_id"
    t.integer  "allytype"
    t.boolean  "approval"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_alliances_on_product_id", using: :btree
    t.index ["user_id"], name: "index_alliances_on_user_id", using: :btree
  end

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
    t.text     "desc1",       limit: 65535
    t.string   "icon1"
    t.string   "title2"
    t.text     "desc2",       limit: 65535
    t.string   "icon2"
    t.string   "title3"
    t.text     "desc3",       limit: 65535
    t.string   "icon3"
    t.string   "title4"
    t.text     "desc4",       limit: 65535
    t.string   "icon4"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.string   "fronttext"
    t.string   "icon"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "banner_file_name"
    t.string   "banner_content_type"
    t.integer  "banner_file_size"
    t.datetime "banner_updated_at"
    t.string   "slug"
    t.index ["slug"], name: "index_categories_on_slug", unique: true, using: :btree
  end

  create_table "contacts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "description",   limit: 65535
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "instagram"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.text     "polpriv",       limit: 65535
    t.text     "prospectiva",   limit: 65535
    t.text     "escalabilidad", limit: 65535
  end

  create_table "direccions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "ciudad"
    t.string   "estado"
    t.string   "pais"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendly_id_slugs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree
  end

  create_table "lilpros", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.text     "description",        limit: 65535
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "mensajes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nombre"
    t.string   "correo"
    t.text     "mensaje",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "pictures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "alt"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "product_id"
    t.index ["product_id"], name: "index_pictures_on_product_id", using: :btree
  end

  create_table "pins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "product_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_tags_on_product_id", using: :btree
    t.index ["tag_id"], name: "index_product_tags_on_tag_id", using: :btree
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.text     "detail",             limit: 65535
    t.string   "author"
    t.integer  "category_id"
    t.string   "amount"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "thumb_file_name"
    t.string   "thumb_content_type"
    t.integer  "thumb_file_size"
    t.datetime "thumb_updated_at"
    t.string   "slug"
    t.index ["category_id"], name: "index_products_on_category_id", using: :btree
    t.index ["slug"], name: "index_products_on_slug", unique: true, using: :btree
  end

  create_table "progresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.text     "description", limit: 65535
    t.string   "status"
    t.integer  "progress"
    t.integer  "product_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["product_id"], name: "index_progresses_on_product_id", using: :btree
  end

  create_table "questions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "description"
    t.text     "answer",      limit: 65535
    t.integer  "product_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["product_id"], name: "index_questions_on_product_id", using: :btree
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
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "title0"
    t.string   "description"
    t.string   "img"
    t.string   "img1"
    t.string   "img2"
    t.string   "img3"
    t.string   "img4"
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
    t.string   "img1_file_name"
    t.string   "img1_content_type"
    t.integer  "img1_file_size"
    t.datetime "img1_updated_at"
    t.string   "img2_file_name"
    t.string   "img2_content_type"
    t.integer  "img2_file_size"
    t.datetime "img2_updated_at"
    t.string   "img3_file_name"
    t.string   "img3_content_type"
    t.integer  "img3_file_size"
    t.datetime "img3_updated_at"
    t.string   "img4_file_name"
    t.string   "img4_content_type"
    t.integer  "img4_file_size"
    t.datetime "img4_updated_at"
  end

  create_table "tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "banner_file_name"
    t.string   "banner_content_type"
    t.integer  "banner_file_size"
    t.datetime "banner_updated_at"
    t.string   "slug"
    t.index ["slug"], name: "index_tags_on_slug", unique: true, using: :btree
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
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
    t.string   "cv_file_name"
    t.string   "cv_content_type"
    t.integer  "cv_file_size"
    t.datetime "cv_updated_at"
    t.string   "country"
    t.string   "state"
    t.string   "city"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "whoares", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "description",                limit: 65535
    t.text     "brezzastory",                limit: 65535
    t.text     "mission",                    limit: 65535
    t.text     "vision",                     limit: 65535
    t.text     "history",                    limit: 65535
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.text     "organigram",                 limit: 65535
    t.string   "organigrampic_file_name"
    t.string   "organigrampic_content_type"
    t.integer  "organigrampic_file_size"
    t.datetime "organigrampic_updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_foreign_key "alliances", "products"
  add_foreign_key "alliances", "users"
  add_foreign_key "pictures", "products"
  add_foreign_key "product_tags", "products"
  add_foreign_key "product_tags", "tags"
  add_foreign_key "products", "categories"
  add_foreign_key "progresses", "products"
  add_foreign_key "questions", "products"
end
