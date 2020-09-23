require 'test_helper'

class IntervencionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @intervencion = intervencions(:one)
  end

  test "should get index" do
    get intervencions_url
    assert_response :success
  end

  test "should get new" do
    get new_intervencion_url
    assert_response :success
  end

  test "should create intervencion" do
    assert_difference('Intervencion.count') do
      post intervencions_url, params: { intervencion: { accion: @intervencion.accion, plantacion_id: @intervencion.plantacion_id } }
    end

    assert_redirected_to intervencion_url(Intervencion.last)
  end

  test "should show intervencion" do
    get intervencion_url(@intervencion)
    assert_response :success
  end

  test "should get edit" do
    get edit_intervencion_url(@intervencion)
    assert_response :success
  end

  test "should update intervencion" do
    patch intervencion_url(@intervencion), params: { intervencion: { accion: @intervencion.accion, plantacion_id: @intervencion.plantacion_id } }
    assert_redirected_to intervencion_url(@intervencion)
  end

  test "should destroy intervencion" do
    assert_difference('Intervencion.count', -1) do
      delete intervencion_url(@intervencion)
    end

    assert_redirected_to intervencions_url
  end
end
