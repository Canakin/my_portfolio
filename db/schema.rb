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

ActiveRecord::Schema.define(version: 2020_11_09_094609) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.integer "content"
    t.bigint "question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id", null: false
    t.bigint "forum_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["forum_id"], name: "index_comments_on_forum_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "forums", force: :cascade do |t|
    t.string "name"
    t.date "creation_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "markets", force: :cascade do |t|
    t.text "description"
    t.integer "index_value"
    t.float "ytd_return"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "portfolios", force: :cascade do |t|
    t.string "name"
    t.integer "value"
    t.date "settlement_date"
    t.integer "settlement_value"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_portfolios_on_user_id"
  end

  create_table "questionnares", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_questionnares_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "content"
    t.bigint "questionnare_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["questionnare_id"], name: "index_questions_on_questionnare_id"
  end

  create_table "securities", force: :cascade do |t|
    t.string "security_type"
    t.integer "value"
    t.integer "beg_value"
    t.text "description"
    t.bigint "portfolio_id", null: false
    t.bigint "market_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["market_id"], name: "index_securities_on_market_id"
    t.index ["portfolio_id"], name: "index_securities_on_portfolio_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "comments", "forums"
  add_foreign_key "comments", "users"
  add_foreign_key "portfolios", "users"
  add_foreign_key "questionnares", "users"
  add_foreign_key "questions", "questionnares"
  add_foreign_key "securities", "markets"
  add_foreign_key "securities", "portfolios"
end
