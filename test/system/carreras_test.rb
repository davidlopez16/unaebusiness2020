require "application_system_test_case"

class CarrerasTest < ApplicationSystemTestCase
  setup do
    @carrera = carreras(:one)
  end

  test "visiting the index" do
    visit carreras_url
    assert_selector "h1", text: "Carreras"
  end

  test "creating a Carrera" do
    visit carreras_url
    click_on "New Carrera"

    fill_in "Nombre", with: @carrera.nombre
    click_on "Create Carrera"

    assert_text "Carrera was successfully created"
    click_on "Back"
  end

  test "updating a Carrera" do
    visit carreras_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @carrera.nombre
    click_on "Update Carrera"

    assert_text "Carrera was successfully updated"
    click_on "Back"
  end

  test "destroying a Carrera" do
    visit carreras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Carrera was successfully destroyed"
  end
end
