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

ActiveRecord::Schema.define(:version => 20130717035213) do

  create_table "anemia", :force => true do |t|
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "patient_id"
    t.string   "electroforesis_acetato"
    t.string   "electroforesis_gel"
    t.string   "dosaje_hemo_a2"
    t.string   "dosaje_hemo_fetal"
    t.string   "heinz"
    t.string   "falciformacion"
    t.string   "brewer"
    t.string   "carrell_kay"
    t.string   "kleihauer_betke"
    t.string   "coombs_directa"
  end

  create_table "patients", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "code"
    t.date     "birthday"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
