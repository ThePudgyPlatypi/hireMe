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

ActiveRecord::Schema.define(version: 20161213045608) do

  create_table "applications", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "user_id"
    t.integer  "job_id"
    t.string   "name"
    t.text     "resume",     limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["user_id", "job_id"], name: "index_applications_on_user_id_and_job_id", using: :btree
  end

  create_table "employers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "company_name"
    t.string   "about"
    t.string   "industry"
    t.date     "founded"
    t.integer  "size"
    t.string   "local_address"
    t.string   "local_suite"
    t.string   "local_apartment"
    t.string   "local_building"
    t.string   "local_city"
    t.string   "local_state"
    t.string   "local_country"
    t.string   "hq_address"
    t.string   "hq_suite"
    t.string   "hq_apartment"
    t.string   "hq_building"
    t.string   "hq_city"
    t.string   "hq_state"
    t.string   "hq_country"
    t.string   "contact_email"
    t.string   "contact_phone"
    t.string   "website"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "google"
    t.string   "instagram"
    t.string   "youtube"
    t.string   "linkedin"
    t.string   "pinterest"
    t.string   "tumblr"
    t.string   "flickr"
    t.string   "reddit"
    t.string   "snapchat"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "username"
  end

  create_table "jobs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "employer_id"
    t.string   "position"
    t.integer  "salary"
    t.text     "description", limit: 65535
    t.string   "hours"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["employer_id"], name: "index_jobs_on_employer_id", using: :btree
  end

  create_table "user_applications", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "job_id"
    t.integer  "user_id"
    t.string   "name"
    t.text     "resume",     limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["job_id", "user_id"], name: "index_user_applications_on_job_id_and_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "first_name",      limit: 50
    t.string   "last_name",       limit: 50
    t.string   "username",        limit: 20
    t.string   "email"
    t.text     "about",           limit: 65535
    t.text     "story",           limit: 65535
    t.string   "school"
    t.string   "major"
    t.string   "current_term"
    t.date     "graduation_date"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.boolean  "admin",                         default: false
    t.string   "password_digest"
  end

end
