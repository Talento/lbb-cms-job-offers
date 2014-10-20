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

ActiveRecord::Schema.define(version: 20141016083954) do

  create_table "lbb_cms_job_offers_job_applications", force: true do |t|
    t.integer  "job_offer_id"
    t.string   "cv_file_name"
    t.string   "cv_content_type"
    t.integer  "cv_file_size"
    t.datetime "cv_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lbb_cms_job_offers_job_applications", ["job_offer_id"], name: "index_lbb_cms_job_offers_job_applications_on_job_offer_id", using: :btree

  create_table "lbb_cms_job_offers_job_offer_translations", force: true do |t|
    t.integer  "lbb_cms_job_offers_job_offer_id", null: false
    t.string   "locale",                          null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.text     "description"
    t.string   "slug"
  end

  add_index "lbb_cms_job_offers_job_offer_translations", ["lbb_cms_job_offers_job_offer_id"], name: "index_794a75d334e8ee80e2f75cf10f77ff5b2bdf5be6", using: :btree
  add_index "lbb_cms_job_offers_job_offer_translations", ["locale"], name: "index_lbb_cms_job_offers_job_offer_translations_on_locale", using: :btree

  create_table "lbb_cms_job_offers_job_offers", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
