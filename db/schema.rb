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

ActiveRecord::Schema.define(version: 20170321210057) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "pgcrypto"

  create_table "posts", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string  "title",        null: false
    t.text    "content",      null: false
    t.date    "date",         null: false
    t.string  "sender_id",    null: false
    t.string  "recipient_id", null: false
    t.integer "rating",       null: false
    t.index ["sender_id", "recipient_id"], name: "index_posts_on_sender_id_and_recipient_id", unique: true, using: :btree
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string  "first_name",       null: false
    t.string  "last_name",        null: false
    t.string  "email",            null: false
    t.boolean "admin",            null: false
    t.boolean "profile_approved"
    t.text    "password_digest",  null: false
    t.index ["email", "first_name"], name: "index_users_on_email_and_first_name", unique: true, using: :btree
  end

end
