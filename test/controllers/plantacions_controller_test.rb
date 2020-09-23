require 'test_helper'

class PlantacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plantacion = plantacions(:one)
  end

  test "should get index" do
    get plantacions_url
    assert_response :success
  end

  test "should get new" do
    get new_plantacion_url
    assert_response :success
  end

  test "should create plantacion" do
    assert_difference('Plantacion.count') do
      post plantacions_url, params: { plantacion: { cultivo: @plantacion.cultivo, numplantas: @plantacion.numplantas, observaciones: @plantacion.observaciones, parcela_id: @plantacion.parcela_id, variedad: @plantacion.variedad } }
    end

    assert_redirected_to plantacion_url(Plantacion.last)
  end

  test "should show plantacion" do
    get plantacion_url(@plantacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_plantacion_url(@plantacion)
    assert_response :success
  end

  test "should update plantacion" do
    patch plantacion_url(@plantacion), params: { plantacion: { cultivo: @plantacion.cultivo, numplantas: @plantacion.numplantas, observaciones: @plantacion.observaciones, parcela_id: @plantacion.parcela_id, variedad: @plantacion.variedad } }
    assert_redirected_to plantacion_url(@plantacion)
  end

  test "should destroy plantacion" do
    assert_difference('Plantacion.count', -1) do
      delete plantacion_url(@plantacion)
    end

    assert_redirected_to plantacions_url
  end
end
