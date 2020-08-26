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

ActiveRecord::Schema.define(version: 2020_08_13_150558) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "permission", default: 0, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "carts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "chitiet_dathangs", force: :cascade do |t|
    t.string "mausp"
    t.string "size"
    t.integer "soluong", default: 1
    t.decimal "dongia"
    t.decimal "thanhtien"
    t.bigint "chitietsanpham_id", null: false
    t.bigint "dondathang_id"
    t.bigint "cart_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cart_id"], name: "index_chitiet_dathangs_on_cart_id"
    t.index ["chitietsanpham_id"], name: "index_chitiet_dathangs_on_chitietsanpham_id"
    t.index ["dondathang_id"], name: "index_chitiet_dathangs_on_dondathang_id"
  end

  create_table "chitiethoadonnhaps", force: :cascade do |t|
    t.integer "soluongnhap"
    t.decimal "dongia"
    t.bigint "hoadonnhap_id", null: false
    t.bigint "chitietsanpham_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chitietsanpham_id"], name: "index_chitiethoadonnhaps_on_chitietsanpham_id"
    t.index ["hoadonnhap_id"], name: "index_chitiethoadonnhaps_on_hoadonnhap_id"
  end

  create_table "chitietsanphams", force: :cascade do |t|
    t.decimal "giaban"
    t.string "hinh1"
    t.string "hinh2"
    t.string "hinh3"
    t.string "hinh4"
    t.bigint "sanpham_id", null: false
    t.bigint "mausanpham_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mausanpham_id"], name: "index_chitietsanphams_on_mausanpham_id"
    t.index ["sanpham_id"], name: "index_chitietsanphams_on_sanpham_id"
  end

  create_table "chitietsizes", force: :cascade do |t|
    t.integer "soluongton"
    t.bigint "chitietsanpham_id", null: false
    t.bigint "sizesanpham_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chitietsanpham_id"], name: "index_chitietsizes_on_chitietsanpham_id"
    t.index ["sizesanpham_id"], name: "index_chitietsizes_on_sizesanpham_id"
  end

  create_table "danhmucs", force: :cascade do |t|
    t.string "tendanhmuc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "danhsach_huis", force: :cascade do |t|
    t.string "taphuuich"
    t.string "dohuuich"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dondathangs", force: :cascade do |t|
    t.date "ngaydathang"
    t.string "nguoinhanhang"
    t.string "phuongthuctt"
    t.string "diachigiao"
    t.string "sdt"
    t.string "ghichu"
    t.string "tinhtrang"
    t.decimal "tongtien"
    t.bigint "giaohang_id"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "notification_params"
    t.string "status"
    t.string "transaction_id"
    t.datetime "purchased_at"
    t.text "email"
    t.string "card_token"
    t.index ["giaohang_id"], name: "index_dondathangs_on_giaohang_id"
    t.index ["user_id"], name: "index_dondathangs_on_user_id"
  end

  create_table "giaohangs", force: :cascade do |t|
    t.date "ngaygiao"
    t.boolean "tinhtrang"
    t.string "ghichu"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hoadonnhaps", force: :cascade do |t|
    t.date "ngaynhap"
    t.decimal "tongtien"
    t.bigint "nhacungcap_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["nhacungcap_id"], name: "index_hoadonnhaps_on_nhacungcap_id"
  end

  create_table "loaisanphams", force: :cascade do |t|
    t.string "tenloai"
    t.bigint "danhmuc_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["danhmuc_id"], name: "index_loaisanphams_on_danhmuc_id"
  end

  create_table "mausanphams", force: :cascade do |t|
    t.string "tenmau"
    t.string "mamau"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nhacungcaps", force: :cascade do |t|
    t.string "tenncc"
    t.string "sdt"
    t.string "diachi"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sanphams", force: :cascade do |t|
    t.string "tensanpham"
    t.text "mota"
    t.bigint "loaisanpham_id", null: false
    t.bigint "thuonghieu_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["loaisanpham_id"], name: "index_sanphams_on_loaisanpham_id"
    t.index ["thuonghieu_id"], name: "index_sanphams_on_thuonghieu_id"
  end

  create_table "sizesanphams", force: :cascade do |t|
    t.string "tensize"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "thuonghieus", force: :cascade do |t|
    t.string "tenthuonghieu"
    t.string "hinhanh"
    t.string "diachi"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "anhdaidien"
    t.string "hoten"
    t.boolean "gioitinh"
    t.text "diachi"
    t.string "sodienthoai"
    t.date "ngaysinh"
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

  add_foreign_key "carts", "users"
  add_foreign_key "chitiet_dathangs", "carts"
  add_foreign_key "chitiet_dathangs", "chitietsanphams"
  add_foreign_key "chitiet_dathangs", "dondathangs"
  add_foreign_key "chitiethoadonnhaps", "chitietsanphams"
  add_foreign_key "chitiethoadonnhaps", "hoadonnhaps"
  add_foreign_key "chitietsanphams", "mausanphams"
  add_foreign_key "chitietsanphams", "sanphams"
  add_foreign_key "chitietsizes", "chitietsanphams"
  add_foreign_key "chitietsizes", "sizesanphams"
  add_foreign_key "dondathangs", "giaohangs"
  add_foreign_key "dondathangs", "users"
  add_foreign_key "hoadonnhaps", "nhacungcaps"
  add_foreign_key "loaisanphams", "danhmucs"
  add_foreign_key "sanphams", "loaisanphams"
  add_foreign_key "sanphams", "thuonghieus"
end
