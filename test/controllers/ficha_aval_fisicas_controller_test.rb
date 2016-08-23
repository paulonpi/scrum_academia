require 'test_helper'

class FichaAvalFisicasControllerTest < ActionController::TestCase
  setup do
    @ficha_aval_fisica = ficha_aval_fisicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ficha_aval_fisicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ficha_aval_fisica" do
    assert_difference('FichaAvalFisica.count') do
      post :create, ficha_aval_fisica: { abdome: @ficha_aval_fisica.abdome, altura: @ficha_aval_fisica.altura, antebraco_direito: @ficha_aval_fisica.antebraco_direito, antebraco_esquerdo: @ficha_aval_fisica.antebraco_esquerdo, braco_direito: @ficha_aval_fisica.braco_direito, braco_esquerdo: @ficha_aval_fisica.braco_esquerdo, cintura: @ficha_aval_fisica.cintura, coxa_direita: @ficha_aval_fisica.coxa_direita, coxa_esquerda: @ficha_aval_fisica.coxa_esquerda, obs: @ficha_aval_fisica.obs, ombro: @ficha_aval_fisica.ombro, panturilha_direita: @ficha_aval_fisica.panturilha_direita, panturilha_esquerda: @ficha_aval_fisica.panturilha_esquerda, pescoco: @ficha_aval_fisica.pescoco, peso: @ficha_aval_fisica.peso, quadril: @ficha_aval_fisica.quadril, torax: @ficha_aval_fisica.torax }
    end

    assert_redirected_to ficha_aval_fisica_path(assigns(:ficha_aval_fisica))
  end

  test "should show ficha_aval_fisica" do
    get :show, id: @ficha_aval_fisica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ficha_aval_fisica
    assert_response :success
  end

  test "should update ficha_aval_fisica" do
    patch :update, id: @ficha_aval_fisica, ficha_aval_fisica: { abdome: @ficha_aval_fisica.abdome, altura: @ficha_aval_fisica.altura, antebraco_direito: @ficha_aval_fisica.antebraco_direito, antebraco_esquerdo: @ficha_aval_fisica.antebraco_esquerdo, braco_direito: @ficha_aval_fisica.braco_direito, braco_esquerdo: @ficha_aval_fisica.braco_esquerdo, cintura: @ficha_aval_fisica.cintura, coxa_direita: @ficha_aval_fisica.coxa_direita, coxa_esquerda: @ficha_aval_fisica.coxa_esquerda, obs: @ficha_aval_fisica.obs, ombro: @ficha_aval_fisica.ombro, panturilha_direita: @ficha_aval_fisica.panturilha_direita, panturilha_esquerda: @ficha_aval_fisica.panturilha_esquerda, pescoco: @ficha_aval_fisica.pescoco, peso: @ficha_aval_fisica.peso, quadril: @ficha_aval_fisica.quadril, torax: @ficha_aval_fisica.torax }
    assert_redirected_to ficha_aval_fisica_path(assigns(:ficha_aval_fisica))
  end

  test "should destroy ficha_aval_fisica" do
    assert_difference('FichaAvalFisica.count', -1) do
      delete :destroy, id: @ficha_aval_fisica
    end

    assert_redirected_to ficha_aval_fisicas_path
  end
end
