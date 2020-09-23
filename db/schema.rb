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

ActiveRecord::Schema.define(version: 2020_09_23_141120) do

  create_table "intervencions", force: :cascade do |t|
    t.integer "plantacion_id", null: false
    t.string "accion", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plantacion_id"], name: "index_intervencions_on_plantacion_id"
  end

  create_table "parcelas", force: :cascade do |t|
    t.string "nombre", null: false
    t.string "tipo", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "plantacions", force: :cascade do |t|
    t.integer "parcela_id", null: false
    t.string "cultivo", null: false
    t.string "variedad", null: false
    t.float "numplantas", null: false
    t.string "observaciones"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["parcela_id"], name: "index_plantacions_on_parcela_id"
  end

  add_foreign_key "intervencions", "plantacions"
  add_foreign_key "plantacions", "parcelas"
end
