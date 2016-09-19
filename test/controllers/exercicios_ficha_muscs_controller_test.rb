require 'test_helper'

class ExerciciosFichaMuscsControllerTest < ActionController::TestCase
  setup do
    @exercicios_ficha_musc = exercicios_ficha_muscs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercicios_ficha_muscs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exercicios_ficha_musc" do
    assert_difference('ExerciciosFichaMusc.count') do
      post :create, exercicios_ficha_musc: { exercicio_id: @exercicios_ficha_musc.exercicio_id, ficha_musc_id: @exercicios_ficha_musc.ficha_musc_id }
    end

    assert_redirected_to exercicios_ficha_musc_path(assigns(:exercicios_ficha_musc))
  end

  test "should show exercicios_ficha_musc" do
    get :show, id: @exercicios_ficha_musc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exercicios_ficha_musc
    assert_response :success
  end

  test "should update exercicios_ficha_musc" do
    patch :update, id: @exercicios_ficha_musc, exercicios_ficha_musc: { exercicio_id: @exercicios_ficha_musc.exercicio_id, ficha_musc_id: @exercicios_ficha_musc.ficha_musc_id }
    assert_redirected_to exercicios_ficha_musc_path(assigns(:exercicios_ficha_musc))
  end

  test "should destroy exercicios_ficha_musc" do
    assert_difference('ExerciciosFichaMusc.count', -1) do
      delete :destroy, id: @exercicios_ficha_musc
    end

    assert_redirected_to exercicios_ficha_muscs_path
  end
end
