require 'test_helper'

class IdiomasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @idioma = idiomas(:one)
  end

  test "should get index" do
    get idiomas_url
    assert_response :success
  end

  test "should get new" do
    get new_idioma_url
    assert_response :success
  end

  test "should create idioma" do
    assert_difference('Idioma.count') do
      post idiomas_url, params: { idioma: { descripcion: @idioma.descripcion, nivel: @idioma.nivel } }
    end

    assert_redirected_to idioma_url(Idioma.last)
  end

  test "should show idioma" do
    get idioma_url(@idioma)
    assert_response :success
  end

  test "should get edit" do
    get edit_idioma_url(@idioma)
    assert_response :success
  end

  test "should update idioma" do
    patch idioma_url(@idioma), params: { idioma: { descripcion: @idioma.descripcion, nivel: @idioma.nivel } }
    assert_redirected_to idioma_url(@idioma)
  end

  test "should destroy idioma" do
    assert_difference('Idioma.count', -1) do
      delete idioma_url(@idioma)
    end

    assert_redirected_to idiomas_url
  end
end
