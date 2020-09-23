require "application_system_test_case"

class PlantacionsTest < ApplicationSystemTestCase
  setup do
    @plantacion = plantacions(:one)
  end

  test "visiting the index" do
    visit plantacions_url
    assert_selector "h1", text: "Plantacions"
  end

  test "creating a Plantacion" do
    visit plantacions_url
    click_on "New Plantacion"

    fill_in "Cultivo", with: @plantacion.cultivo
    fill_in "Numplantas", with: @plantacion.numplantas
    fill_in "Observaciones", with: @plantacion.observaciones
    fill_in "Parcela", with: @plantacion.parcela_id
    fill_in "Variedad", with: @plantacion.variedad
    click_on "Create Plantacion"

    assert_text "Plantacion was successfully created"
    click_on "Back"
  end

  test "updating a Plantacion" do
    visit plantacions_url
    click_on "Edit", match: :first

    fill_in "Cultivo", with: @plantacion.cultivo
    fill_in "Numplantas", with: @plantacion.numplantas
    fill_in "Observaciones", with: @plantacion.observaciones
    fill_in "Parcela", with: @plantacion.parcela_id
    fill_in "Variedad", with: @plantacion.variedad
    click_on "Update Plantacion"

    assert_text "Plantacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Plantacion" do
    visit plantacions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Plantacion was successfully destroyed"
  end
end
