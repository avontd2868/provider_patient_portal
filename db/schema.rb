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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121208214559) do

  create_table "appointments", :force => true do |t|
    t.integer "doctor_id"
    t.integer "patient_id"
    t.date    "datetime"
  end

  create_table "doctors", :force => true do |t|
    t.string   "username"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "email"
    t.string   "phone"
    t.string   "password"
    t.string   "password_digest"
    t.integer  "photo_id"
    t.boolean  "patient"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "illnesses", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "link"
    t.integer  "photo_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "illnesses_patients", :force => true do |t|
    t.integer "illness_id"
    t.integer "patient_id"
  end

  create_table "matches", :force => true do |t|
    t.integer "patient_id"
    t.integer "doctor_id"
  end

  create_table "medications", :force => true do |t|
    t.string   "name"
    t.integer  "photo_id"
    t.text     "description"
    t.string   "interaction"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "medications_patients", :force => true do |t|
    t.integer "medication_id"
    t.integer "patient_id"
  end

  create_table "patients", :force => true do |t|
    t.string   "username"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "email"
    t.string   "phone"
    t.string   "password"
    t.string   "password_digest"
    t.integer  "age"
    t.integer  "photo_id"
    t.boolean  "patient"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "photos", :force => true do |t|
    t.integer  "parent_id"
    t.string   "caption"
    t.string   "photo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "requests", :force => true do |t|
    t.integer "sender_id"
    t.integer "receiver_id"
    t.boolean "accepted"
  end

end
