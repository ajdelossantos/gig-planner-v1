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

ActiveRecord::Schema.define(version: 2018_09_29_205503) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "annotations", force: :cascade do |t|
    t.json "payload"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "annotations_pieces", id: false, force: :cascade do |t|
    t.bigint "piece_id", null: false
    t.bigint "annotation_id", null: false
  end

  create_table "bands", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.index ["name"], name: "index_bands_on_name", unique: true
  end

  create_table "bands_gigs", id: false, force: :cascade do |t|
    t.bigint "band_id", null: false
    t.bigint "gig_id", null: false
  end

  create_table "bands_pieces", id: false, force: :cascade do |t|
    t.bigint "band_id", null: false
    t.bigint "piece_id", null: false
  end

  create_table "bands_set_lists", id: false, force: :cascade do |t|
    t.bigint "band_id", null: false
    t.bigint "set_list_id", null: false
  end

  create_table "gigs", force: :cascade do |t|
    t.string "name", null: false
    t.json "payload"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_gigs_on_name", unique: true
  end

  create_table "gigs_set_lists", id: false, force: :cascade do |t|
    t.bigint "gig_id", null: false
    t.bigint "set_list_id", null: false
  end

  create_table "pieces", force: :cascade do |t|
    t.string "title", null: false
    t.json "payload"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "index_pieces_on_title", unique: true
  end

  create_table "pieces_set_lists", id: false, force: :cascade do |t|
    t.bigint "set_list_id", null: false
    t.bigint "piece_id", null: false
  end

  create_table "set_lists", force: :cascade do |t|
    t.string "name", null: false
    t.json "payload"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_set_lists_on_name", unique: true
  end

end
