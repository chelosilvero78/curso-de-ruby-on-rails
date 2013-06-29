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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130614234540) do

  create_table "accesorios", :force => true do |t|
    t.integer  "modelo_id"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "capacidades", :force => true do |t|
    t.integer  "numero"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "capacidades_modelos", :id => false, :force => true do |t|
    t.integer "capacidad_id"
    t.integer "modelo_id"
  end

  create_table "clientes", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "usuario_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "componentes", :force => true do |t|
    t.string   "descripcion"
    t.integer  "proveedor_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "componentes_modelos", :force => true do |t|
    t.integer  "modelo_id"
    t.integer  "componente_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "modelos", :force => true do |t|
    t.string   "codigo"
    t.integer  "serie_id"
    t.integer  "sistema_operativo_id"
    t.string   "nombre"
    t.date     "fecha_lanzamiento"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "personas", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "edad"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "proveedores", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "series", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sistemas_operativos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "usuarios", :force => true do |t|
    t.string   "login"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
