require "application_system_test_case"

class AlumnosTest < ApplicationSystemTestCase
  setup do
    @alumno = alumnos(:one)
  end

  test "visiting the index" do
    visit alumnos_url
    assert_selector "h1", text: "Alumnos"
  end

  test "creating a Alumno" do
    visit alumnos_url
    click_on "New Alumno"

    fill_in "Apellido", with: @alumno.apellido
    fill_in "Carrera", with: @alumno.carrera
    fill_in "Cedula", with: @alumno.cedula
    fill_in "Confir Contra", with: @alumno.confir_contra
    fill_in "Confir Correo", with: @alumno.confir_correo
    fill_in "Contrasenha", with: @alumno.contrasenha
    fill_in "Correo", with: @alumno.correo
    fill_in "Nombre", with: @alumno.nombre
    fill_in "Postulante", with: @alumno.postulante_id
    fill_in "Semestre", with: @alumno.semestre
    fill_in "User", with: @alumno.user_id
    fill_in "Usuario", with: @alumno.usuario
    click_on "Create Alumno"

    assert_text "Alumno was successfully created"
    click_on "Back"
  end

  test "updating a Alumno" do
    visit alumnos_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @alumno.apellido
    fill_in "Carrera", with: @alumno.carrera
    fill_in "Cedula", with: @alumno.cedula
    fill_in "Confir Contra", with: @alumno.confir_contra
    fill_in "Confir Correo", with: @alumno.confir_correo
    fill_in "Contrasenha", with: @alumno.contrasenha
    fill_in "Correo", with: @alumno.correo
    fill_in "Nombre", with: @alumno.nombre
    fill_in "Postulante", with: @alumno.postulante_id
    fill_in "Semestre", with: @alumno.semestre
    fill_in "User", with: @alumno.user_id
    fill_in "Usuario", with: @alumno.usuario
    click_on "Update Alumno"

    assert_text "Alumno was successfully updated"
    click_on "Back"
  end

  test "destroying a Alumno" do
    visit alumnos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alumno was successfully destroyed"
  end
end
