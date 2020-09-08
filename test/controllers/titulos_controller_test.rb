require 'test_helper'

class TitulosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @titulo = titulos(:one)
  end

  test "should get index" do
    get titulos_url
    assert_response :success
  end

  test "should get new" do
    get new_titulo_url
    assert_response :success
  end

  test "should create titulo" do
    assert_difference('Titulo.count') do
      post titulos_url, params: { titulo: { descripcion: @titulo.descripcion } }
    end

    assert_redirected_to titulo_url(Titulo.last)
  end

  test "should show titulo" do
    get titulo_url(@titulo)
    assert_response :success
  end

  test "should get edit" do
    get edit_titulo_url(@titulo)
    assert_response :success
  end

  test "should update titulo" do
    patch titulo_url(@titulo), params: { titulo: { descripcion: @titulo.descripcion } }
    assert_redirected_to titulo_url(@titulo)
  end

  test "should destroy titulo" do
    assert_difference('Titulo.count', -1) do
      delete titulo_url(@titulo)
    end

    assert_redirected_to titulos_url
  end
end
