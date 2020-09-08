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

ActiveRecord::Schema.define(version: 2018_11_08_013821) do

  create_table "capacidads", force: :cascade do |t|
    t.string "tipo"
    t.string "nivel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carreras", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empresas", force: :cascade do |t|
    t.string "ruc"
    t.string "nombre"
    t.string "direccion"
    t.string "telefono"
    t.string "email"
    t.string "fundador"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estudios", force: :cascade do |t|
    t.integer "user_id"
    t.integer "postulante_id"
    t.string "nivel"
    t.string "titulo"
    t.string "institucion"
    t.string "situacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "anho_graduacion"
    t.index ["postulante_id"], name: "index_estudios_on_postulante_id"
    t.index ["user_id"], name: "index_estudios_on_user_id"
  end

  create_table "exp_laborals", force: :cascade do |t|
    t.string "nombre_empresa"
    t.string "rubro_empresa"
    t.string "cargo"
    t.date "fecha_entrada"
    t.date "fecha_salida"
    t.integer "salario"
    t.string "personal_a_cargo"
    t.text "descripcion_tareas"
    t.text "referencias"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "postulante_id"
  end

  create_table "idiomas", force: :cascade do |t|
    t.string "descripcion"
    t.string "nivel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nivelacademicos", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personas", force: :cascade do |t|
    t.string "usuario"
    t.string "nombre"
    t.string "apellido"
    t.integer "cedula"
    t.string "correo"
    t.string "carrera"
    t.integer "semestre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "postulantes", force: :cascade do |t|
    t.integer "cedula"
    t.string "nombres"
    t.string "apellidos"
    t.integer "edad"
    t.string "nacionalidad"
    t.string "estado_civil"
    t.string "telefono"
    t.string "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "fecha_nacimiento"
    t.string "sexo"
    t.text "mas_info"
    t.string "idioma"
    t.string "anho_graduacion"
    t.string "email"
  end

  create_table "titulos", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "permission_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
