require 'test_helper'

class MensalidadesControllerTest < ActionController::TestCase
  setup do
    @mensalidade = mensalidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mensalidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mensalidade" do
    assert_difference('Mensalidade.count') do
      post :create, mensalidade: { data_venc: @mensalidade.data_venc, pago: @mensalidade.pago }
    end

    assert_redirected_to mensalidade_path(assigns(:mensalidade))
  end

  test "should show mensalidade" do
    get :show, id: @mensalidade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mensalidade
    assert_response :success
  end

  test "should update mensalidade" do
    patch :update, id: @mensalidade, mensalidade: { data_venc: @mensalidade.data_venc, pago: @mensalidade.pago }
    assert_redirected_to mensalidade_path(assigns(:mensalidade))
  end

  test "should destroy mensalidade" do
    assert_difference('Mensalidade.count', -1) do
      delete :destroy, id: @mensalidade
    end

    assert_redirected_to mensalidades_path
  end
end
