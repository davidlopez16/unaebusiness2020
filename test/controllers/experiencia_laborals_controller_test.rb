require 'test_helper'

class ExperienciaLaboralsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @experiencia_laboral = experiencia_laborals(:one)
  end

  test "should get index" do
    get experiencia_laborals_url
    assert_response :success
  end

  test "should get new" do
    get new_experiencia_laboral_url
    assert_response :success
  end

  test "should create experiencia_laboral" do
    assert_difference('ExperienciaLaboral.count') do
      post experiencia_laborals_url, params: { experiencia_laboral: { cargo: @experiencia_laboral.cargo, descripcion_tareas: @experiencia_laboral.descripcion_tareas, fecha_entrada: @experiencia_laboral.fecha_entrada, fecha_salida: @experiencia_laboral.fecha_salida, nombre_empresa: @experiencia_laboral.nombre_empresa, personal_a_cargo: @experiencia_laboral.personal_a_cargo, referencias: @experiencia_laboral.referencias, rubro_empresa: @experiencia_laboral.rubro_empresa, salario: @experiencia_laboral.salario } }
    end

    assert_redirected_to experiencia_laboral_url(ExperienciaLaboral.last)
  end

  test "should show experiencia_laboral" do
    get experiencia_laboral_url(@experiencia_laboral)
    assert_response :success
  end

  test "should get edit" do
    get edit_experiencia_laboral_url(@experiencia_laboral)
    assert_response :success
  end

  test "should update experiencia_laboral" do
    patch experiencia_laboral_url(@experiencia_laboral), params: { experiencia_laboral: { cargo: @experiencia_laboral.cargo, descripcion_tareas: @experiencia_laboral.descripcion_tareas, fecha_entrada: @experiencia_laboral.fecha_entrada, fecha_salida: @experiencia_laboral.fecha_salida, nombre_empresa: @experiencia_laboral.nombre_empresa, personal_a_cargo: @experiencia_laboral.personal_a_cargo, referencias: @experiencia_laboral.referencias, rubro_empresa: @experiencia_laboral.rubro_empresa, salario: @experiencia_laboral.salario } }
    assert_redirected_to experiencia_laboral_url(@experiencia_laboral)
  end

  test "should destroy experiencia_laboral" do
    assert_difference('ExperienciaLaboral.count', -1) do
      delete experiencia_laboral_url(@experiencia_laboral)
    end

    assert_redirected_to experiencia_laborals_url
  end
end
