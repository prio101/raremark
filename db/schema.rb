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

ActiveRecord::Schema.define(version: 2020_09_26_163833) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "question_answers", force: :cascade do |t|
    t.string "answer"
    t.bigint "question_id"
    t.bigint "survey_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_question_answers_on_question_id"
    t.index ["survey_id"], name: "index_question_answers_on_survey_id"
  end

  create_table "question_options", force: :cascade do |t|
    t.string "option"
    t.bigint "question_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_question_options_on_question_id"
  end

  create_table "question_types", force: :cascade do |t|
    t.bigint "question_id"
    t.bigint "survey_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_question_types_on_question_id"
    t.index ["survey_id"], name: "index_question_types_on_survey_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "question"
    t.bigint "survey_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["survey_id"], name: "index_questions_on_survey_id"
  end

  create_table "surveys", force: :cascade do |t|
    t.string "name"
    t.boolean "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "question_answers", "questions"
  add_foreign_key "question_answers", "surveys"
  add_foreign_key "question_options", "questions"
  add_foreign_key "question_types", "questions"
  add_foreign_key "question_types", "surveys"
end
