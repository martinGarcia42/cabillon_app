require "application_system_test_case"

class IntervencionsTest < ApplicationSystemTestCase
  setup do
    @intervencion = intervencions(:one)
  end

  test "visiting the index" do
    visit intervencions_url
    assert_selector "h1", text: "Intervencions"
  end

  test "creating a Intervencion" do
    visit intervencions_url
    click_on "New Intervencion"

    fill_in "Accion", with: @intervencion.accion
    fill_in "Plantacion", with: @intervencion.plantacion_id
    click_on "Create Intervencion"

    assert_text "Intervencion was successfully created"
    click_on "Back"
  end

  test "updating a Intervencion" do
    visit intervencions_url
    click_on "Edit", match: :first

    fill_in "Accion", with: @intervencion.accion
    fill_in "Plantacion", with: @intervencion.plantacion_id
    click_on "Update Intervencion"

    assert_text "Intervencion was successfully updated"
    click_on "Back"
  end

  test "destroying a Intervencion" do
    visit intervencions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Intervencion was successfully destroyed"
  end
end
