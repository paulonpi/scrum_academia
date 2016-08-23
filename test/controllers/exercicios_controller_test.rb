require 'test_helper'

class ExerciciosControllerTest < ActionController::TestCase
  setup do
    @exercicio = exercicios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercicios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exercicio" do
    assert_difference('Exercicio.count') do
      post :create, exercicio: { dia: @exercicio.dia, grupo_musc: @exercicio.grupo_musc, kg: @exercicio.kg, nome: @exercicio.nome, repeticoes: @exercicio.repeticoes, serie: @exercicio.serie }
    end

    assert_redirected_to exercicio_path(assigns(:exercicio))
  end

  test "should show exercicio" do
    get :show, id: @exercicio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exercicio
    assert_response :success
  end

  test "should update exercicio" do
    patch :update, id: @exercicio, exercicio: { dia: @exercicio.dia, grupo_musc: @exercicio.grupo_musc, kg: @exercicio.kg, nome: @exercicio.nome, repeticoes: @exercicio.repeticoes, serie: @exercicio.serie }
    assert_redirected_to exercicio_path(assigns(:exercicio))
  end

  test "should destroy exercicio" do
    assert_difference('Exercicio.count', -1) do
      delete :destroy, id: @exercicio
    end

    assert_redirected_to exercicios_path
  end
end
