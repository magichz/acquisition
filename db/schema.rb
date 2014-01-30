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

ActiveRecord::Schema.define(version: 20140130133317) do

  create_table "addresses", force: true do |t|
    t.integer  "Address_ID"
    t.string   "Address_street"
    t.string   "Address_Suburb"
    t.string   "Address_Postcode"
    t.string   "Address_State"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "client_softwares", force: true do |t|
    t.integer  "Software_ID"
    t.string   "Software_Name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.integer  "Contact_ID"
    t.string   "Contact_Title"
    t.string   "Contact_Position"
    t.string   "Contact_Email"
    t.string   "Phone_Number"
    t.string   "Contact_Type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctors", force: true do |t|
    t.integer  "Doctor_ID"
    t.integer  "Medical_Centre_ID"
    t.string   "Doctor_Name"
    t.float    "Doctor_Hourly_Rate"
    t.integer  "Doctor_Service_Year"
    t.integer  "Doctor_Plan_Year"
    t.boolean  "Doctor_Contract"
    t.date     "Start_Date"
    t.date     "End_Date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forms", force: true do |t|
    t.integer  "Medical_Centre_ID"
    t.string   "Medical_Centre_Name"
    t.string   "Operation_Days"
    t.integer  "External_Rating_ID"
    t.integer  "Internal_Rating_ID"
    t.integer  "Practitioner_No"
    t.integer  "Admin_No"
    t.integer  "Nursing_No"
    t.integer  "Specialist_No"
    t.float    "Rental_Dietician"
    t.float    "Rental_Dentist"
    t.float    "Rental_Physio"
    t.float    "Rental_Hearing"
    t.float    "Revenue_Practice"
    t.float    "Revenue_Medicare"
    t.float    "Revenue_Thirdparty"
    t.float    "Revenue_Alliedhealth"
    t.float    "Rental_Pathology"
    t.float    "Profit_Beforetax"
    t.float    "Offer_Amount"
    t.integer  "Pathology_Provider_ID"
    t.integer  "Radiology_Provider_ID"
    t.integer  "Doctor_ID"
    t.integer  "Property_Ownership_ID"
    t.integer  "Contact_ID"
    t.integer  "Accountant_ID"
    t.integer  "Address_ID"
    t.integer  "Software_ID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pathology_providers", force: true do |t|
    t.integer  "Pathology_Provider_ID"
    t.string   "Pathology_Provider_Name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "property_ownerships", force: true do |t|
    t.integer  "Property_ID"
    t.string   "Ownership_Desc"
    t.string   "Type_Desc"
    t.integer  "Address_ID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "radiology_providers", force: true do |t|
    t.integer  "Radiology_Provider_ID"
    t.string   "Radiology_Provider_Name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ratings", force: true do |t|
    t.integer  "Rating_ID"
    t.string   "Rating_Desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
