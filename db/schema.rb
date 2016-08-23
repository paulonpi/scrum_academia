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

ActiveRecord::Schema.define(version: 20160823233228) do

  create_table "cidades", force: :cascade do |t|
    t.string   "nome"
    t.string   "uf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercicios", force: :cascade do |t|
    t.string   "grupo_musc"
    t.string   "dia"
    t.string   "serie"
    t.decimal  "repeticoes"
    t.decimal  "kg"
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ficha_aval_fisicas", force: :cascade do |t|
    t.decimal  "antebraco_direito"
    t.decimal  "antebraco_esquerdo"
    t.decimal  "panturilha_direita"
    t.decimal  "panturilha_esquerda"
    t.decimal  "pescoco"
    t.decimal  "torax"
    t.decimal  "coxa_direita"
    t.decimal  "coxa_esquerda"
    t.decimal  "peso"
    t.decimal  "quadril"
    t.decimal  "braco_esquerdo"
    t.decimal  "braco_direito"
    t.decimal  "ombro"
    t.decimal  "abdome"
    t.decimal  "cintura"
    t.decimal  "altura"
    t.text     "obs"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "ficha_muscs", force: :cascade do |t|
    t.string   "data"
    t.string   "validade"
    t.string   "obs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mensalidades", force: :cascade do |t|
    t.boolean  "pago"
    t.string   "data_venc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "telefone"
    t.string   "telefone_responsavel"
    t.string   "data_nasc"
    t.string   "cref"
    t.string   "tipo_usuario"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
