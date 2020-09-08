require "application_system_test_case"

class IdiomasTest < ApplicationSystemTestCase
  setup do
    @idioma = idiomas(:one)
  end

  test "visiting the index" do
    visit idiomas_url
    assert_selector "h1", text: "Idiomas"
  end

  test "creating a Idioma" do
    visit idiomas_url
    click_on "New Idioma"

    fill_in "Descripcion", with: @idioma.descripcion
    fill_in "Nivel", with: @idioma.nivel
    click_on "Create Idioma"

    assert_text "Idioma was successfully created"
    click_on "Back"
  end

  test "updating a Idioma" do
    visit idiomas_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @idioma.descripcion
    fill_in "Nivel", with: @idioma.nivel
    click_on "Update Idioma"

    assert_text "Idioma was successfully updated"
    click_on "Back"
  end

  test "destroying a Idioma" do
    visit idiomas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Idioma was successfully destroyed"
  end
end
