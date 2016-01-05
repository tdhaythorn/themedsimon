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

ActiveRecord::Schema.define(version: 20160103050500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "corporateprofiles", force: :cascade do |t|
    t.string   "status"
    t.string   "companyname"
    t.string   "companylogo"
    t.string   "companybanner"
    t.string   "companywebsite"
    t.string   "companyindustry"
    t.string   "companytype"
    t.string   "companyheadquarters"
    t.string   "companysize"
    t.string   "companyvideo"
    t.string   "aboutus"
    t.string   "country"
    t.string   "state"
    t.string   "city"
    t.integer  "user_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "corporateprofiles", ["user_id", "created_at"], name: "index_corporateprofiles_on_user_id_and_created_at", using: :btree
  add_index "corporateprofiles", ["user_id"], name: "index_corporateprofiles_on_user_id", using: :btree

  create_table "corporates", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "status"
    t.string   "companyname"
    t.string   "companylogo"
    t.string   "companybanner"
    t.string   "companywebsite"
    t.string   "companyindustry"
    t.string   "companytype"
    t.string   "companyheadquarters"
    t.string   "companysize"
    t.string   "companyvideo"
    t.string   "aboutus"
    t.string   "country"
    t.string   "state"
    t.string   "city"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "searches", force: :cascade do |t|
    t.string   "searchname"
    t.string   "firstname"
    t.string   "city"
    t.float    "min_gpa"
    t.float    "max_gpa"
    t.string   "universityname"
    t.string   "country"
    t.string   "state"
    t.string   "language"
    t.float    "gpa"
    t.integer  "workexperience"
    t.string   "livingin"
    t.integer  "monthsspentabroadliving"
    t.integer  "monthsspentabroadworking"
    t.string   "degree"
    t.string   "degreetype"
    t.string   "countryofdegree"
    t.string   "wantstoworkin"
    t.string   "hasworkexperiencein"
    t.string   "charitywork"
    t.integer  "age"
    t.string   "permissiontoworkin"
    t.string   "referencesuponrequest"
    t.string   "gender"
    t.string   "currentlyemployed"
    t.string   "worktype"
    t.boolean  "saved"
    t.integer  "resultscount"
    t.integer  "user_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "searches", ["user_id", "created_at"], name: "index_searches_on_user_id_and_created_at", using: :btree
  add_index "searches", ["user_id"], name: "index_searches_on_user_id", using: :btree

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "user_id"
    t.string   "status"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "imagethumbnail"
    t.string   "universityname"
    t.string   "country"
    t.string   "city"
    t.string   "state"
    t.string   "language"
    t.float    "gpa"
    t.integer  "workexperience"
    t.string   "livingin"
    t.integer  "monthsspentabroadliving"
    t.integer  "monthsspentabroadworking"
    t.string   "degree"
    t.string   "degreetype"
    t.string   "countryofdegree"
    t.string   "wantstoworkin"
    t.string   "hasworkexperiencein"
    t.string   "charitywork"
    t.integer  "age"
    t.string   "permissiontoworkin"
    t.string   "referencesuponrequest"
    t.string   "gender"
    t.string   "currentlyemployed"
    t.string   "worktype"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "corporateprofiles", "users"
  add_foreign_key "searches", "users"
end
