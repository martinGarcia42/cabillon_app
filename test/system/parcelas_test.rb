require "application_system_test_case"

class ParcelasTest < ApplicationSystemTestCase
  setup do
    @parcela = parcelas(:one)
  end

  test "visiting the index" do
    visit parcelas_url
    assert_selector "h1", text: "Parcelas"
  end

  test "creating a Parcela" do
    visit parcelas_url
    click_on "New Parcela"

    fill_in "Nombre", with: @parcela.nombre
    fill_in "Tipo", with: @parcela.tipo
    click_on "Create Parcela"

    assert_text "Parcela was successfully created"
    click_on "Back"
  end

  test "updating a Parcela" do
    visit parcelas_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @parcela.nombre
    fill_in "Tipo", with: @parcela.tipo
    click_on "Update Parcela"

    assert_text "Parcela was successfully updated"
    click_on "Back"
  end

  test "destroying a Parcela" do
    visit parcelas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Parcela was successfully destroyed"
  end
end
