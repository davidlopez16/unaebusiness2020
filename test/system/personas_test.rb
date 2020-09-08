require "application_system_test_case"

class PersonasTest < ApplicationSystemTestCase
  setup do
    @persona = personas(:one)
  end

  test "visiting the index" do
    visit personas_url
    assert_selector "h1", text: "Personas"
  end

  test "creating a Persona" do
    visit personas_url
    click_on "New Persona"

    fill_in "Apellido", with: @persona.apellido
    fill_in "Carrera", with: @persona.carrera
    fill_in "Cedula", with: @persona.cedula
    fill_in "Confir Contra", with: @persona.confir_contra
    fill_in "Confir Correo", with: @persona.confir_correo
    fill_in "Contrasenha", with: @persona.contrasenha
    fill_in "Correo", with: @persona.correo
    fill_in "Nombre", with: @persona.nombre
    fill_in "Postulante", with: @persona.postulante_id
    fill_in "Semestre", with: @persona.semestre
    fill_in "User", with: @persona.user_id
    fill_in "Usuario", with: @persona.usuario
    click_on "Create Persona"

    assert_text "Persona was successfully created"
    click_on "Back"
  end

  test "updating a Persona" do
    visit personas_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @persona.apellido
    fill_in "Carrera", with: @persona.carrera
    fill_in "Cedula", with: @persona.cedula
    fill_in "Confir Contra", with: @persona.confir_contra
    fill_in "Confir Correo", with: @persona.confir_correo
    fill_in "Contrasenha", with: @persona.contrasenha
    fill_in "Correo", with: @persona.correo
    fill_in "Nombre", with: @persona.nombre
    fill_in "Postulante", with: @persona.postulante_id
    fill_in "Semestre", with: @persona.semestre
    fill_in "User", with: @persona.user_id
    fill_in "Usuario", with: @persona.usuario
    click_on "Update Persona"

    assert_text "Persona was successfully updated"
    click_on "Back"
  end

  test "destroying a Persona" do
    visit personas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Persona was successfully destroyed"
  end
end
