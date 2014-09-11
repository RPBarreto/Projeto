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

ActiveRecord::Schema.define(version: 20140911202811) do

  create_table "arquivos", force: true do |t|
    t.string   "descricao",  limit: 40
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "curiosidades", force: true do |t|
    t.string   "text",       limit: 400
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "elementos", force: true do |t|
    t.string   "nome",               limit: 30
    t.integer  "num_eletrons"
    t.integer  "num_neutrons"
    t.integer  "num_protons"
    t.integer  "eletronegatividade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "postagems", force: true do |t|
    t.string   "text",       limit: 400
    t.string   "arquivos"
    t.string   "tipo",       limit: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resposta", force: true do |t|
    t.integer  "post",       limit: 12
    t.string   "texto",      limit: 400
    t.string   "autor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "turma_usuarios", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "turmas", force: true do |t|
    t.string   "ano",        limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "username",   limit: 15
    t.string   "Nome",       limit: 100
    t.string   "senha",      limit: 20
    t.integer  "CPF",        limit: 11
    t.string   "permissoes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visibilidades", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
