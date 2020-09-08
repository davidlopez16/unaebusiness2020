require 'test_helper'

class EmpresaControllerTest < ActionDispatch::IntegrationTest
  test "should get perfil" do
    get empresa_perfil_url
    assert_response :success
  end

  test "should get muro" do
    get empresa_muro_url
    assert_response :success
  end

  test "should get publicar" do
    get empresa_publicar_url
    assert_response :success
  end

end
