require "application_system_test_case"

class ExperienciaLaboralsTest < ApplicationSystemTestCase
  setup do
    @experiencia_laboral = experiencia_laborals(:one)
  end

  test "visiting the index" do
    visit experiencia_laborals_url
    assert_selector "h1", text: "Experiencia Laborals"
  end

  test "creating a Experiencia laboral" do
    visit experiencia_laborals_url
    click_on "New Experiencia Laboral"

    fill_in "Cargo", with: @experiencia_laboral.cargo
    fill_in "Descripcion Tareas", with: @experiencia_laboral.descripcion_tareas
    fill_in "Fecha Entrada", with: @experiencia_laboral.fecha_entrada
    fill_in "Fecha Salida", with: @experiencia_laboral.fecha_salida
    fill_in "Nombre Empresa", with: @experiencia_laboral.nombre_empresa
    fill_in "Personal A Cargo", with: @experiencia_laboral.personal_a_cargo
    fill_in "Referencias", with: @experiencia_laboral.referencias
    fill_in "Rubro Empresa", with: @experiencia_laboral.rubro_empresa
    fill_in "Salario", with: @experiencia_laboral.salario
    click_on "Create Experiencia laboral"

    assert_text "Experiencia laboral was successfully created"
    click_on "Back"
  end

  test "updating a Experiencia laboral" do
    visit experiencia_laborals_url
    click_on "Edit", match: :first

    fill_in "Cargo", with: @experiencia_laboral.cargo
    fill_in "Descripcion Tareas", with: @experiencia_laboral.descripcion_tareas
    fill_in "Fecha Entrada", with: @experiencia_laboral.fecha_entrada
    fill_in "Fecha Salida", with: @experiencia_laboral.fecha_salida
    fill_in "Nombre Empresa", with: @experiencia_laboral.nombre_empresa
    fill_in "Personal A Cargo", with: @experiencia_laboral.personal_a_cargo
    fill_in "Referencias", with: @experiencia_laboral.referencias
    fill_in "Rubro Empresa", with: @experiencia_laboral.rubro_empresa
    fill_in "Salario", with: @experiencia_laboral.salario
    click_on "Update Experiencia laboral"

    assert_text "Experiencia laboral was successfully updated"
    click_on "Back"
  end

  test "destroying a Experiencia laboral" do
    visit experiencia_laborals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Experiencia laboral was successfully destroyed"
  end
end
