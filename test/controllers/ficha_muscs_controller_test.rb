require 'test_helper'

class FichaMuscsControllerTest < ActionController::TestCase
  setup do
    @ficha_musc = ficha_muscs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ficha_muscs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ficha_musc" do
    assert_difference('FichaMusc.count') do
      post :create, ficha_musc: { data: @ficha_musc.data, obs: @ficha_musc.obs, validade: @ficha_musc.validade }
    end

    assert_redirected_to ficha_musc_path(assigns(:ficha_musc))
  end

  test "should show ficha_musc" do
    get :show, id: @ficha_musc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ficha_musc
    assert_response :success
  end

  test "should update ficha_musc" do
    patch :update, id: @ficha_musc, ficha_musc: { data: @ficha_musc.data, obs: @ficha_musc.obs, validade: @ficha_musc.validade }
    assert_redirected_to ficha_musc_path(assigns(:ficha_musc))
  end

  test "should destroy ficha_musc" do
    assert_difference('FichaMusc.count', -1) do
      delete :destroy, id: @ficha_musc
    end

    assert_redirected_to ficha_muscs_path
  end
end
