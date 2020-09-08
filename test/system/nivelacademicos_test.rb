require "application_system_test_case"

class NivelacademicosTest < ApplicationSystemTestCase
  setup do
    @nivelacademico = nivelacademicos(:one)
  end

  test "visiting the index" do
    visit nivelacademicos_url
    assert_selector "h1", text: "Nivelacademicos"
  end

  test "creating a Nivelacademico" do
    visit nivelacademicos_url
    click_on "New Nivelacademico"

    fill_in "Descripcion", with: @nivelacademico.descripcion
    click_on "Create Nivelacademico"

    assert_text "Nivelacademico was successfully created"
    click_on "Back"
  end

  test "updating a Nivelacademico" do
    visit nivelacademicos_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @nivelacademico.descripcion
    click_on "Update Nivelacademico"

    assert_text "Nivelacademico was successfully updated"
    click_on "Back"
  end

  test "destroying a Nivelacademico" do
    visit nivelacademicos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nivelacademico was successfully destroyed"
  end
end
