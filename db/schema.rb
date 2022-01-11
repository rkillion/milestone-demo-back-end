# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_11_113903) do

  create_table "assignments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "milestone_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["milestone_id"], name: "index_assignments_on_milestone_id"
    t.index ["user_id"], name: "index_assignments_on_user_id"
  end

  create_table "milestones", force: :cascade do |t|
    t.string "title"
    t.datetime "date"
    t.boolean "action_required"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_milestones_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "institution"
    t.integer "notifications"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "assignments", "milestones"
  add_foreign_key "assignments", "users"
  add_foreign_key "milestones", "users"
end
