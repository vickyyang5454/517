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

ActiveRecord::Schema.define(version: 2020_09_16_062531) do

  create_table "admins", force: :cascade do |t|
    t.integer "contact_id_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contact_id_id"], name: "index_admins_on_contact_id_id"
  end

  create_table "contact_infomations", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.integer "phone_num"
    t.string "address"
    t.string "user_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "course_orders", force: :cascade do |t|
    t.string "status"
    t.integer "student_id_id"
    t.integer "teachment_id_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id_id"], name: "index_course_orders_on_student_id_id"
    t.index ["teachment_id_id"], name: "index_course_orders_on_teachment_id_id"
  end

  create_table "courses", force: :cascade do |t|
    t.integer "course_num"
    t.text "discipline"
    t.string "name"
    t.string "area"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "creditcards", force: :cascade do |t|
    t.string "name"
    t.integer "card_num"
    t.date "experation_date"
    t.integer "cvv"
    t.integer "student_id_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id_id"], name: "index_creditcards_on_student_id_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.text "description"
    t.integer "teacher_id_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["teacher_id_id"], name: "index_feedbacks_on_teacher_id_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "major"
    t.integer "contact_id_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contact_id_id"], name: "index_students_on_contact_id_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.text "discipline"
    t.integer "contact_id_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contact_id_id"], name: "index_teachers_on_contact_id_id"
  end

  create_table "teachments", force: :cascade do |t|
    t.integer "course_id_id"
    t.integer "teacher_id_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id_id"], name: "index_teachments_on_course_id_id"
    t.index ["teacher_id_id"], name: "index_teachments_on_teacher_id_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin_role", default: false
    t.boolean "teacher_role", default: false
    t.boolean "student_role", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
