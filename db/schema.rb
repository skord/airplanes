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

ActiveRecord::Schema.define(version: 2018_06_01_011039) do

  create_table "flights", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "icao"
    t.datetime "fseen"
    t.integer "cmsgs"
    t.boolean "altt"
    t.boolean "tisb"
    t.boolean "trkh"
    t.integer "sqk"
    t.boolean "vsit"
    t.integer "wtc"
    t.integer "species"
    t.integer "engtype"
    t.integer "engmount"
    t.boolean "mil"
    t.string "cou"
    t.boolean "haspic"
    t.boolean "interested"
    t.integer "flightscount"
    t.boolean "gnd"
    t.integer "spdtyp"
    t.boolean "callsus"
    t.integer "trt"
    t.decimal "sig", precision: 10
    t.integer "alt"
    t.integer "galt"
    t.decimal "inhg", precision: 10
    t.decimal "lat", precision: 10
    t.decimal "long", precision: 10
    t.datetime "postime"
    t.boolean "mlat"
    t.integer "tsecs"
    t.string "reg"
    t.string "call"
    t.decimal "spd", precision: 10
    t.float "trak"
    t.string "icao_type_code"
    t.string "mdl"
    t.string "man"
    t.string "cnum"
    t.string "from"
    t.string "to"
    t.string "op"
    t.string "opicao"
    t.integer "engines"
    t.integer "year"
    t.boolean "help"
    t.integer "vsi"
    t.integer "talt"
    t.integer "ttrk"
    t.boolean "posstale"
    t.boolean "sat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
