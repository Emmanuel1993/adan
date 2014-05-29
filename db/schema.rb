# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140514015426) do

  create_table "comentarios", force: true do |t|
    t.string   "nombre"
    t.string   "email"
    t.text     "comentario"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comentarios", ["post_id"], name: "index_comentarios_on_post_id"

  create_table "denuncia_transitos", force: true do |t|
    t.string   "nombre"
    t.string   "ubicacion"
    t.string   "dependencia"
    t.string   "estado"
    t.string   "municipio"
    t.date     "fecha"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diputados", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inicios", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "panals", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pans", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "perfiles", force: true do |t|
    t.string   "titulo"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prds", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pris", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "representantes", force: true do |t|
    t.integer  "num"
    t.string   "nombre"
    t.string   "partido"
    t.string   "eleccion"
    t.string   "estado"
    t.string   "camara"
    t.string   "propietario"
    t.string   "twitter"
    t.string   "youtube"
    t.string   "facebook"
    t.string   "paginapersonal"
    t.string   "twitteravatar"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "senadores", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
