# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_14_154024) do

  create_table "grade_levels", force: :cascade do |t|
    t.integer "student_id"
    t.integer "teacher_id"
    t.string "grade"
    t.index ["student_id"], name: "index_grade_levels_on_student_id"
    t.index ["teacher_id"], name: "index_grade_levels_on_teacher_id"
  end

  create_table "homeworks", force: :cascade do |t|
    t.integer "grade_level_id"
    t.string "status", default: "incomplete"
    t.index ["grade_level_id"], name: "index_homeworks_on_grade_level_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "years_of_experience"
  end

end
