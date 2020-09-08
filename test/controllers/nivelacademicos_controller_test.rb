require 'test_helper'

class NivelacademicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nivelacademico = nivelacademicos(:one)
  end

  test "should get index" do
    get nivelacademicos_url
    assert_response :success
  end

  test "should get new" do
    get new_nivelacademico_url
    assert_response :success
  end

  test "should create nivelacademico" do
    assert_difference('Nivelacademico.count') do
      post nivelacademicos_url, params: { nivelacademico: { descripcion: @nivelacademico.descripcion } }
    end

    assert_redirected_to nivelacademico_url(Nivelacademico.last)
  end

  test "should show nivelacademico" do
    get nivelacademico_url(@nivelacademico)
    assert_response :success
  end

  test "should get edit" do
    get edit_nivelacademico_url(@nivelacademico)
    assert_response :success
  end

  test "should update nivelacademico" do
    patch nivelacademico_url(@nivelacademico), params: { nivelacademico: { descripcion: @nivelacademico.descripcion } }
    assert_redirected_to nivelacademico_url(@nivelacademico)
  end

  test "should destroy nivelacademico" do
    assert_difference('Nivelacademico.count', -1) do
      delete nivelacademico_url(@nivelacademico)
    end

    assert_redirected_to nivelacademicos_url
  end
end
