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

ActiveRecord::Schema[7.0].define(version: 2023_01_25_070126) do
  create_table "animals", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false, comment: "名前"
    t.integer "age", null: false, comment: "年齢"
    t.integer "animal_type", null: false, comment: "種類"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "post_id"
    t.text "comment", null: false, comment: "コメント"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
  end

  create_table "family_trees", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "genre_id", comment: "ジャンルID"
    t.integer "price", comment: "金額"
    t.text "note", comment: "備考"
    t.datetime "purchase_day", comment: "購入日"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_family_trees_on_genre_id"
  end

  create_table "genres", charset: "utf8mb4", force: :cascade do |t|
    t.string "genres_title", null: false, comment: "ジャンルタイトル"
    t.integer "tax_type", null: false, comment: "税抜、税込"
    t.datetime "buy_day", null: false, comment: "登録日"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", charset: "utf8mb4", force: :cascade do |t|
    t.string "title", null: false, comment: "タイトル"
    t.text "text", null: false, comment: "本文"
    t.string "image", null: false, comment: "写真"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchases", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "post_id", null: false, comment: "投稿ID"
    t.integer "price", null: false, comment: "金額"
    t.integer "prefecture_id", default: 0, null: false, comment: "都道府県"
    t.integer "delivery_time", default: 0, null: false, comment: "お届け時間"
    t.integer "purchase_type", default: 0, null: false, comment: "購入タイプ"
    t.integer "price_type", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_purchases_on_post_id"
  end

  create_table "tweets", charset: "utf8mb4", force: :cascade do |t|
    t.string "tweet", null: false, comment: "ツイート"
    t.integer "tag", default: 0, null: false, comment: "タグ"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "nickname", null: false, comment: "ニックネーム"
    t.string "email", null: false, comment: "メールアドレス"
    t.string "password", null: false, comment: "パスワード"
    t.string "sex", null: false, comment: "性別"
    t.boolean "notification", null: false, comment: "メール通知"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "posts"
  add_foreign_key "family_trees", "genres"
  add_foreign_key "purchases", "posts"
end
