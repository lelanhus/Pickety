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

ActiveRecord::Schema.define(:version => 20101122060721) do

  create_table "bricks", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "relation_id"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorizations", :force => true do |t|
    t.integer  "brick_id"
    t.string   "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genderizations", :force => true do |t|
    t.integer  "species_id"
    t.integer  "gender_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genders", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "notable_id"
    t.string   "notable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationships", :force => true do |t|
    t.integer  "brick_id"
    t.integer  "relation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "species", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "speciesizations", :force => true do |t|
    t.integer  "state_id"
    t.integer  "species_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statizations", :force => true do |t|
    t.integer  "brick_id"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
