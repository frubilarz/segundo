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

ActiveRecord::Schema.define(version: 20170928151753) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "autos", force: :cascade do |t|
    t.integer "marca_id"
    t.integer "puertas"
    t.integer "persona_id"
    t.boolean "rueda_respuesto"
    t.string "patente"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dias", force: :cascade do |t|
    t.integer "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "auto_id"
  end

  create_table "marcas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personas", force: :cascade do |t|
    t.string "nombres"
    t.string "apellidos"
    t.date "fecha_nacimiento"
    t.string "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "autos", "marcas"
  add_foreign_key "autos", "personas"
  add_foreign_key "dias", "autos"
end
