require 'test_helper'

class EstudiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estudio = estudios(:one)
  end

  test "should get index" do
    get estudios_url
    assert_response :success
  end

  test "should get new" do
    get new_estudio_url
    assert_response :success
  end

  test "should create estudio" do
    assert_difference('Estudio.count') do
      post estudios_url, params: { estudio: { institucion: @estudio.institucion, nivel: @estudio.nivel, postulante_id: @estudio.postulante_id, situacion: @estudio.situacion, titulo: @estudio.titulo, user_id: @estudio.user_id } }
    end

    assert_redirected_to estudio_url(Estudio.last)
  end

  test "should show estudio" do
    get estudio_url(@estudio)
    assert_response :success
  end

  test "should get edit" do
    get edit_estudio_url(@estudio)
    assert_response :success
  end

  test "should update estudio" do
    patch estudio_url(@estudio), params: { estudio: { institucion: @estudio.institucion, nivel: @estudio.nivel, postulante_id: @estudio.postulante_id, situacion: @estudio.situacion, titulo: @estudio.titulo, user_id: @estudio.user_id } }
    assert_redirected_to estudio_url(@estudio)
  end

  test "should destroy estudio" do
    assert_difference('Estudio.count', -1) do
      delete estudio_url(@estudio)
    end

    assert_redirected_to estudios_url
  end
end
