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

ActiveRecord::Schema.define(version: 20160705011858) do

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",               default: "", null: false
    t.string   "encrypted_password",  default: "", null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true

  create_table "book_statuses", force: :cascade do |t|
    t.string   "status_title"
    t.string   "status_description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "department_name"
    t.integer  "faculty_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "departments", ["faculty_id"], name: "index_departments_on_faculty_id"

  create_table "exhibit_categories", force: :cascade do |t|
    t.string   "category_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "exhibit_statuses", force: :cascade do |t|
    t.string   "status_title"
    t.string   "status_description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "exhibits", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "exhibit_category_id"
    t.string   "image"
    t.string   "title"
    t.text     "exhibit_description"
    t.integer  "price"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "book_status_id"
    t.integer  "exhibit_status_id"
  end

  add_index "exhibits", ["book_status_id"], name: "index_exhibits_on_book_status_id"
  add_index "exhibits", ["exhibit_category_id"], name: "index_exhibits_on_exhibit_category_id"
  add_index "exhibits", ["exhibit_status_id"], name: "index_exhibits_on_exhibit_status_id"
  add_index "exhibits", ["user_id"], name: "index_exhibits_on_user_id"

  create_table "faculties", force: :cascade do |t|
    t.string   "faculty_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "admin"
    t.string   "name"
    t.string   "student_number"
    t.date     "admission_year"
    t.integer  "faculty_id"
    t.integer  "department_id"
  end

  add_index "users", ["department_id"], name: "index_users_on_department_id"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["faculty_id"], name: "index_users_on_faculty_id"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
