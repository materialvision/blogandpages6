# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_15_162616) do

  create_table "bootsy_image_galleries", force: :cascade do |t|
    t.integer "bootsy_resource_id"
    t.string "bootsy_resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bootsy_images", force: :cascade do |t|
    t.string "image_file"
    t.integer "image_gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: :cascade do |t|
    t.string "title", limit: 255
    t.text "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "importance"
    t.boolean "clouded"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title", limit: 255
    t.text "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "author", limit: 255
    t.text "contentlong"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer "tag_id"
    t.integer "taggable_id"
    t.integer "tagger_id"
    t.string "tagger_type", limit: 255
    t.string "taggable_type", limit: 255
    t.string "context", limit: 255
    t.datetime "created_at"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name", limit: 255
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "wysihat_files", force: :cascade do |t|
    t.string "file_file_name", limit: 255
    t.string "file_content_type", limit: 255
    t.integer "file_file_size"
    t.datetime "file_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
