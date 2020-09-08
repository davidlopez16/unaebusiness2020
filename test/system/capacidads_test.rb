require "application_system_test_case"

class CapacidadsTest < ApplicationSystemTestCase
  setup do
    @capacidad = capacidads(:one)
  end

  test "visiting the index" do
    visit capacidads_url
    assert_selector "h1", text: "Capacidads"
  end

  test "creating a Capacidad" do
    visit capacidads_url
    click_on "New Capacidad"

    fill_in "Nivel", with: @capacidad.nivel
    fill_in "Tipo", with: @capacidad.tipo
    click_on "Create Capacidad"

    assert_text "Capacidad was successfully created"
    click_on "Back"
  end

  test "updating a Capacidad" do
    visit capacidads_url
    click_on "Edit", match: :first

    fill_in "Nivel", with: @capacidad.nivel
    fill_in "Tipo", with: @capacidad.tipo
    click_on "Update Capacidad"

    assert_text "Capacidad was successfully updated"
    click_on "Back"
  end

  test "destroying a Capacidad" do
    visit capacidads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Capacidad was successfully destroyed"
  end
end
