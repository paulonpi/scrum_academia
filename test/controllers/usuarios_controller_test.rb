require 'test_helper'

class UsuariosControllerTest < ActionController::TestCase
  setup do
    @usuario = usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuario" do
    assert_difference('Usuario.count') do
      post :create, usuario: { cref: @usuario.cref, data_nasc: @usuario.data_nasc, endereco: @usuario.endereco, nome: @usuario.nome, telefone: @usuario.telefone, telefone_responsavel: @usuario.telefone_responsavel, tipo_usuario: @usuario.tipo_usuario }
    end

    assert_redirected_to usuario_path(assigns(:usuario))
  end

  test "should show usuario" do
    get :show, id: @usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuario
    assert_response :success
  end

  test "should update usuario" do
    patch :update, id: @usuario, usuario: { cref: @usuario.cref, data_nasc: @usuario.data_nasc, endereco: @usuario.endereco, nome: @usuario.nome, telefone: @usuario.telefone, telefone_responsavel: @usuario.telefone_responsavel, tipo_usuario: @usuario.tipo_usuario }
    assert_redirected_to usuario_path(assigns(:usuario))
  end

  test "should destroy usuario" do
    assert_difference('Usuario.count', -1) do
      delete :destroy, id: @usuario
    end

    assert_redirected_to usuarios_path
  end
end
