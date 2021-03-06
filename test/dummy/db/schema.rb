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

ActiveRecord::Schema.define(version: 20141022101625) do

  create_table "season_constrains", force: true do |t|
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.integer  "target_id"
    t.string   "target_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seo_tag_translations", force: true do |t|
    t.integer  "seo_tag_id",           null: false
    t.string   "locale",               null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "seo_meta_description"
    t.string   "seo_title"
    t.string   "seo_meta_keywords"
    t.string   "seo_robot"
    t.string   "seo_canonical"
    t.string   "og_image"
  end

  add_index "seo_tag_translations", ["locale"], name: "index_seo_tag_translations_on_locale", using: :btree
  add_index "seo_tag_translations", ["seo_tag_id"], name: "index_seo_tag_translations_on_seo_tag_id", using: :btree

  create_table "seo_tags", force: true do |t|
    t.integer  "seo_taggable_id",   null: false
    t.string   "seo_taggable_type", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "seo_tags", ["seo_taggable_type", "seo_taggable_id"], name: "seo_tags_taggable", using: :btree

  create_table "wilson_cms_job_offers_job_applications", force: true do |t|
    t.integer  "job_offer_id"
    t.string   "cv_file_name"
    t.string   "cv_content_type"
    t.integer  "cv_file_size"
    t.datetime "cv_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wilson_cms_job_offers_job_applications", ["job_offer_id"], name: "index_wilson_cms_job_offers_job_applications_on_job_offer_id", using: :btree

  create_table "wilson_cms_job_offers_job_offer_translations", force: true do |t|
    t.integer  "wilson_cms_job_offers_job_offer_id", null: false
    t.string   "locale",                             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.text     "description"
    t.string   "slug"
  end

  add_index "wilson_cms_job_offers_job_offer_translations", ["locale"], name: "index_wilson_cms_job_offers_job_offer_translations_on_locale", using: :btree
  add_index "wilson_cms_job_offers_job_offer_translations", ["wilson_cms_job_offers_job_offer_id"], name: "index_ca3dfc69be25f1e25859f36301703123f459fa79", using: :btree

  create_table "wilson_cms_job_offers_job_offers", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
