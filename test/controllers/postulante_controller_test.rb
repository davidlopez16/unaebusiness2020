require 'test_helper'

class PostulanteControllerTest < ActionDispatch::IntegrationTest
  test "should get perfil_postulante" do
    get postulante_perfil_postulante_url
    assert_response :success
  end

end
