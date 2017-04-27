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

ActiveRecord::Schema.define(version: 20170426134928) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "book_pages", force: :cascade do |t|
    t.string   "book_title"
    t.integer  "page_number"
    t.date     "year"
    t.string   "dimensions"
    t.boolean  "portfolio"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "row_order"
    t.string   "image"
    t.string   "slug"
    t.index ["book_title"], name: "index_book_pages_on_book_title", using: :btree
    t.index ["row_order"], name: "index_book_pages_on_row_order", using: :btree
    t.index ["slug"], name: "index_book_pages_on_slug", unique: true, using: :btree
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
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

  create_table "news_items", force: :cascade do |t|
    t.string   "headline"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
  end

  create_table "rnl_issues", force: :cascade do |t|
    t.integer  "issue_number"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "cover_image"
    t.string   "background_image"
  end

  create_table "works", force: :cascade do |t|
    t.string   "title"
    t.date     "year"
    t.string   "medium"
    t.string   "dimensions"
    t.string   "work_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "row_order"
    t.string   "image"
    t.index ["row_order"], name: "index_works_on_row_order", using: :btree
    t.index ["work_type"], name: "index_works_on_work_type", using: :btree
  end

end
