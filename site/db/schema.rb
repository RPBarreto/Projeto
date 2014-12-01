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

ActiveRecord::Schema.define(version: 20141201044611) do

  create_table "arquivos", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cadastros", force: true do |t|
    t.string   "login"
    t.string   "senha"
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "subject"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "curiosidades", force: true do |t|
    t.integer  "elemento_id"
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "elementos", force: true do |t|
    t.string   "nome",               limit: 20
    t.integer  "num_eletrons"
    t.integer  "num_neutrons"
    t.integer  "num_protons"
    t.float    "eletronegatividade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "post_arquivos", force: true do |t|
    t.integer  "arquivo_id"
    t.integer  "postagem_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "postagens", force: true do |t|
    t.string   "text"
    t.string   "arquivos"
    t.integer  "usuario_id"
    t.string   "tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.text     "conteudo"
    t.string   "data"
    t.string   "usuario"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "id_usuario"
  end

  create_table "respostas", force: true do |t|
    t.string   "texto"
    t.integer  "postagem_id"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "turma_usuarios", force: true do |t|
    t.integer  "usuario_id"
    t.integer  "turma_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "turmas", force: true do |t|
    t.string   "ano"
    t.string   "curso"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "nome"
    t.string   "username",   limit: 10
    t.string   "password",   limit: 32
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "turma"
    t.string   "char"
  end

  create_table "visibilidades", force: true do |t|
    t.integer  "postagem_id"
    t.integer  "turma_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
