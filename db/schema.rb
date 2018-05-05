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

ActiveRecord::Schema.define(version: 20180505103043) do

  create_table "professors", force: :cascade do |t|
    t.string   "college"
    t.string   "major"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scores", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "professor_id"
    t.integer  "attend"
    t.integer  "sleep"
    t.integer  "lect_sys"
    t.integer  "hw_fre"
    t.integer  "hw_lvl"
    t.integer  "qz_fre"
    t.integer  "qz_lvl"
    t.integer  "tst_lvl"
    t.integer  "tst_jjok"
    t.text     "comment"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "scores", ["professor_id"], name: "index_scores_on_professor_id"
  add_index "scores", ["user_id"], name: "index_scores_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "college"
    t.string   "major"
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
