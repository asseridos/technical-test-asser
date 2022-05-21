# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_05_21_144227) do

  create_table "activities", force: :cascade do |t|
    t.integer "member_id", null: false
    t.string "action"
    t.text "description"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["member_id"], name: "index_activities_on_member_id"
  end

  create_table "contents", force: :cascade do |t|
    t.string "type_of_content"
    t.text "description"
    t.string "url"
    t.integer "member_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["member_id"], name: "index_contents_on_member_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "github"
    t.string "twitter"
    t.text "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "members_tags", force: :cascade do |t|
    t.integer "member_id", null: false
    t.integer "tag_id", null: false
    t.index ["member_id"], name: "index_members_tags_on_member_id"
    t.index ["tag_id"], name: "index_members_tags_on_tag_id"
  end

  create_table "notes", force: :cascade do |t|
    t.integer "member_id", null: false
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["member_id"], name: "index_notes_on_member_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "activities", "members"
  add_foreign_key "contents", "members"
  add_foreign_key "members_tags", "members"
  add_foreign_key "members_tags", "tags"
  add_foreign_key "notes", "members"
end
