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

ActiveRecord::Schema.define(version: 20180531030003) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "alert_messages", force: :cascade do |t|
    t.integer "user_id"
    t.string "title", null: false
    t.text "body", null: false
    t.boolean "read_flg", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_alert_messages_on_user_id"
  end

  create_table "alerts", force: :cascade do |t|
    t.string "title", null: false
    t.text "body", null: false
    t.integer "type", limit: 2
    t.boolean "top_flg", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "answers", force: :cascade do |t|
    t.integer "admin_id"
    t.integer "inquiry_id"
    t.text "body", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_answers_on_admin_id"
    t.index ["inquiry_id"], name: "index_answers_on_inquiry_id"
  end

  create_table "carts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "good_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["good_id"], name: "index_carts_on_good_id"
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "comment_for_notes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "note_id"
    t.string "body", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["note_id"], name: "index_comment_for_notes_on_note_id"
    t.index ["user_id"], name: "index_comment_for_notes_on_user_id"
  end

  create_table "comment_for_works", force: :cascade do |t|
    t.integer "user_id"
    t.integer "work_id"
    t.text "body", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_comment_for_works_on_user_id"
    t.index ["work_id"], name: "index_comment_for_works_on_work_id"
  end

  create_table "delivers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_delivers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_delivers_on_reset_password_token", unique: true
  end

  create_table "folder_items", force: :cascade do |t|
    t.integer "folder_id"
    t.integer "work_id"
    t.text "explanation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["folder_id"], name: "index_folder_items_on_folder_id"
    t.index ["work_id"], name: "index_folder_items_on_work_id"
  end

  create_table "folders", force: :cascade do |t|
    t.integer "user_id"
    t.string "title", null: false
    t.text "explanation"
    t.boolean "hide_flg", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_folders_on_user_id"
  end

  create_table "good_genres", force: :cascade do |t|
    t.string "name", null: false
    t.text "explanation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "good_items", force: :cascade do |t|
    t.integer "good_id"
    t.text "image_id", null: false
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["good_id"], name: "index_good_items_on_good_id"
  end

  create_table "goods", force: :cascade do |t|
    t.integer "good_genre_id"
    t.integer "user_id"
    t.string "title", null: false
    t.text "explanation", null: false
    t.integer "value", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["good_genre_id"], name: "index_goods_on_good_genre_id"
    t.index ["user_id"], name: "index_goods_on_user_id"
  end

  create_table "inquiries", force: :cascade do |t|
    t.integer "user_id"
    t.string "title", null: false
    t.text "body", null: false
    t.boolean "resolution_flg", default: false
    t.boolean "hide_flg", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_inquiries_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "work_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_likes_on_user_id"
    t.index ["work_id"], name: "index_likes_on_work_id"
  end

  create_table "messages", force: :cascade do |t|
    t.integer "user_id"
    t.integer "from_user_id"
    t.string "title", null: false
    t.text "body", null: false
    t.boolean "read_flg", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["from_user_id"], name: "index_messages_on_from_user_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "money_requests", force: :cascade do |t|
    t.integer "user_id"
    t.integer "how_much", null: false
    t.string "bank_name", null: false
    t.string "branch_name", null: false
    t.string "account_number", null: false
    t.string "account_name", null: false
    t.integer "status", limit: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_money_requests_on_user_id"
  end

  create_table "nices", force: :cascade do |t|
    t.integer "user_id"
    t.integer "note_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["note_id"], name: "index_nices_on_note_id"
    t.index ["user_id"], name: "index_nices_on_user_id"
  end

  create_table "notes", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "body"
    t.text "image1_id"
    t.text "image2_id"
    t.text "image3_id"
    t.text "image4_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_notes_on_user_id"
  end

  create_table "order_item_items", force: :cascade do |t|
    t.integer "order_item_id"
    t.string "name"
    t.text "explanation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_item_id"], name: "index_order_item_items_on_order_item_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "order_id"
    t.integer "user_id"
    t.string "good_title", null: false
    t.text "good_explanation"
    t.integer "value", null: false
    t.string "seller_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["user_id"], name: "index_order_items_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.integer "prefectural_id"
    t.string "order_number"
    t.string "user_first_name"
    t.string "user_last_name"
    t.string "user_kana_name"
    t.string "postal_code"
    t.string "city"
    t.string "street"
    t.integer "amount"
    t.integer "status"
    t.integer "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prefectural_id"], name: "index_orders_on_prefectural_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "photo_book_items", force: :cascade do |t|
    t.integer "photo_book_id"
    t.text "photo_book_image_id", null: false
    t.text "explanation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photo_book_id"], name: "index_photo_book_items_on_photo_book_id"
  end

  create_table "photo_books", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.text "explanation"
    t.integer "value"
    t.boolean "ask_flg", default: false
    t.integer "status", limit: 3
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_photo_books_on_user_id"
  end

  create_table "points", force: :cascade do |t|
    t.integer "points"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prefecturals", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "report_goods", force: :cascade do |t|
    t.integer "user_id"
    t.integer "good_id"
    t.text "reason", null: false
    t.boolean "hide_flg", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["good_id"], name: "index_report_goods_on_good_id"
    t.index ["user_id"], name: "index_report_goods_on_user_id"
  end

  create_table "report_works", force: :cascade do |t|
    t.integer "work_id"
    t.integer "user_id"
    t.text "reason", null: false
    t.boolean "hide_flg", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_report_works_on_user_id"
    t.index ["work_id"], name: "index_report_works_on_work_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "target_user_id"
    t.integer "star", default: 3
    t.text "body", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["target_user_id"], name: "index_reviews_on_target_user_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "scores", force: :cascade do |t|
    t.integer "work_id"
    t.integer "general"
    t.integer "montly"
    t.integer "m_ranking"
    t.integer "weekly"
    t.integer "w_ranking"
    t.integer "daily"
    t.integer "d_ranking"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["work_id"], name: "index_scores_on_work_id"
  end

  create_table "user_infos", force: :cascade do |t|
    t.integer "user_id"
    t.integer "prefectural_id_id"
    t.string "first_name_kanji", null: false
    t.string "last_name_kanji", null: false
    t.string "kana_name", null: false
    t.string "postal_code", null: false
    t.string "city", null: false
    t.string "street", null: false
    t.string "phone_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prefectural_id_id"], name: "index_user_infos_on_prefectural_id_id"
    t.index ["user_id"], name: "index_user_infos_on_user_id"
  end

  create_table "user_work_relationships", force: :cascade do |t|
    t.integer "user_id"
    t.integer "following_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["following_id"], name: "index_user_work_relationships_on_following_id"
    t.index ["user_id"], name: "index_user_work_relationships_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name", null: false
    t.string "introduction"
    t.text "profile_image_id"
    t.integer "point"
    t.boolean "massage_allow", default: true
    t.boolean "quite_flg", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_relationships", force: :cascade do |t|
    t.integer "user_id"
    t.integer "following_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["following_id"], name: "index_users_relationships_on_following_id"
    t.index ["user_id"], name: "index_users_relationships_on_user_id"
  end

  create_table "wants", force: :cascade do |t|
    t.integer "user_id"
    t.integer "good_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["good_id"], name: "index_wants_on_good_id"
    t.index ["user_id"], name: "index_wants_on_user_id"
  end

  create_table "work_genres", force: :cascade do |t|
    t.string "name", null: false
    t.text "explanation"
    t.integer "genre_status", limit: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "work_items", force: :cascade do |t|
    t.integer "work_id"
    t.text "image_id", null: false
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["work_id"], name: "index_work_items_on_work_id"
  end

  create_table "work_spaces", force: :cascade do |t|
    t.integer "user_id"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_work_spaces_on_user_id"
  end

  create_table "works", force: :cascade do |t|
    t.integer "user_id"
    t.integer "work_genre_id"
    t.text "explanation"
    t.text "image_id", null: false
    t.boolean "album_allow_flg", default: true
    t.boolean "hide_flg", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_works_on_user_id"
    t.index ["work_genre_id"], name: "index_works_on_work_genre_id"
  end

end
