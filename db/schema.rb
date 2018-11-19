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

ActiveRecord::Schema.define(version: 2018_09_17_054404) do

  create_table "addresses", force: :cascade do |t|
    t.integer "category"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.boolean "primary"
    t.integer "user_id"
    t.integer "person_id"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category"], name: "index_addresses_on_category"
    t.index ["company_id"], name: "index_addresses_on_company_id"
    t.index ["person_id"], name: "index_addresses_on_person_id"
    t.index ["primary"], name: "index_addresses_on_primary"
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "type"
    t.integer "category"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category"], name: "index_companies_on_category"
    t.index ["type"], name: "index_companies_on_type"
  end

  create_table "emails", force: :cascade do |t|
    t.integer "category"
    t.string "email"
    t.boolean "primary"
    t.integer "user_id"
    t.integer "person_id"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category"], name: "index_emails_on_category"
    t.index ["company_id"], name: "index_emails_on_company_id"
    t.index ["person_id"], name: "index_emails_on_person_id"
    t.index ["primary"], name: "index_emails_on_primary"
    t.index ["user_id"], name: "index_emails_on_user_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "type"
    t.integer "user_id"
    t.string "first_name"
    t.string "last_name"
    t.date "dob"
    t.string "ssn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_people_on_type"
    t.index ["user_id"], name: "index_people_on_user_id"
  end

  create_table "phones", force: :cascade do |t|
    t.integer "category"
    t.string "area_code"
    t.string "phone_number"
    t.boolean "primary"
    t.integer "user_id"
    t.integer "person_id"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category"], name: "index_phones_on_category"
    t.index ["company_id"], name: "index_phones_on_company_id"
    t.index ["person_id"], name: "index_phones_on_person_id"
    t.index ["primary"], name: "index_phones_on_primary"
    t.index ["user_id"], name: "index_phones_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "websites", force: :cascade do |t|
    t.integer "category"
    t.string "website"
    t.boolean "primary"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category"], name: "index_websites_on_category"
    t.index ["company_id"], name: "index_websites_on_company_id"
    t.index ["primary"], name: "index_websites_on_primary"
  end

end
