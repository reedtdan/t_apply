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

ActiveRecord::Schema.define(:version => 20120627031537) do

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "DOB"
    t.text     "POB"
    t.text     "Perm_Address"
    t.text     "Cur_Address"
    t.string   "Telephone"
    t.text     "Current_Year"
    t.string   "Grad_Level"
    t.string   "Expected_Grad_Date"
    t.text     "Interests"
    t.text     "School1"
    t.text     "School2"
    t.text     "School3"
    t.text     "Honors_Awards"
    t.text     "Extra_Comm_Service"
    t.text     "Work_Experience"
    t.text     "Parent1_Name"
    t.text     "Parent1_Phone"
    t.text     "Parent1_Email"
    t.text     "Parent2_Name"
    t.text     "Parent2_Phone"
    t.text     "Parent2_Email"
    t.text     "Background"
    t.text     "Gender"
    t.text     "Parent_Ed"
    t.text     "Parent_Occupation"
    t.text     "Telluride_Learn"
    t.text     "Sig_Name"
    t.text     "Sig_Date"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
