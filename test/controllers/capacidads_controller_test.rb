require 'test_helper'

class CapacidadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @capacidad = capacidads(:one)
  end

  test "should get index" do
    get capacidads_url
    assert_response :success
  end

  test "should get new" do
    get new_capacidad_url
    assert_response :success
  end

  test "should create capacidad" do
    assert_difference('Capacidad.count') do
      post capacidads_url, params: { capacidad: { nivel: @capacidad.nivel, tipo: @capacidad.tipo } }
    end

    assert_redirected_to capacidad_url(Capacidad.last)
  end

  test "should show capacidad" do
    get capacidad_url(@capacidad)
    assert_response :success
  end

  test "should get edit" do
    get edit_capacidad_url(@capacidad)
    assert_response :success
  end

  test "should update capacidad" do
    patch capacidad_url(@capacidad), params: { capacidad: { nivel: @capacidad.nivel, tipo: @capacidad.tipo } }
    assert_redirected_to capacidad_url(@capacidad)
  end

  test "should destroy capacidad" do
    assert_difference('Capacidad.count', -1) do
      delete capacidad_url(@capacidad)
    end

    assert_redirected_to capacidads_url
  end
end
