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

ActiveRecord::Schema.define(:version => 20120124004017) do

  create_table "complaints", :force => true do |t|
    t.integer  "patient_id"
    t.string   "complaint"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "initial_treatments", :force => true do |t|
    t.integer  "patient_id"
    t.string   "treatment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "investigations", :force => true do |t|
    t.integer  "patient_id"
    t.string   "investigation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", :force => true do |t|
    t.date     "date_arrived"
    t.time     "time_arrived"
    t.boolean  "mlc_status"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "relation"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "gender_boolean"
    t.integer  "age"
  end

end
