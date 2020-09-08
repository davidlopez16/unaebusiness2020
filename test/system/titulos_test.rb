require "application_system_test_case"

class TitulosTest < ApplicationSystemTestCase
  setup do
    @titulo = titulos(:one)
  end

  test "visiting the index" do
    visit titulos_url
    assert_selector "h1", text: "Titulos"
  end

  test "creating a Titulo" do
    visit titulos_url
    click_on "New Titulo"

    fill_in "Descripcion", with: @titulo.descripcion
    click_on "Create Titulo"

    assert_text "Titulo was successfully created"
    click_on "Back"
  end

  test "updating a Titulo" do
    visit titulos_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @titulo.descripcion
    click_on "Update Titulo"

    assert_text "Titulo was successfully updated"
    click_on "Back"
  end

  test "destroying a Titulo" do
    visit titulos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Titulo was successfully destroyed"
  end
end
