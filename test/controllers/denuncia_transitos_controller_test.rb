require 'test_helper'

class DenunciaTransitosControllerTest < ActionController::TestCase
  setup do
    @denuncia_transito = denuncia_transitos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:denuncia_transitos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create denuncia_transito" do
    assert_difference('DenunciaTransito.count') do
      post :create, denuncia_transito: { dependencia: @denuncia_transito.dependencia, descripcion: @denuncia_transito.descripcion, estado: @denuncia_transito.estado, fecha: @denuncia_transito.fecha, municipio: @denuncia_transito.municipio, nombre: @denuncia_transito.nombre, ubicacion: @denuncia_transito.ubicacion }
    end

    assert_redirected_to denuncia_transito_path(assigns(:denuncia_transito))
  end

  test "should show denuncia_transito" do
    get :show, id: @denuncia_transito
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @denuncia_transito
    assert_response :success
  end

  test "should update denuncia_transito" do
    patch :update, id: @denuncia_transito, denuncia_transito: { dependencia: @denuncia_transito.dependencia, descripcion: @denuncia_transito.descripcion, estado: @denuncia_transito.estado, fecha: @denuncia_transito.fecha, municipio: @denuncia_transito.municipio, nombre: @denuncia_transito.nombre, ubicacion: @denuncia_transito.ubicacion }
    assert_redirected_to denuncia_transito_path(assigns(:denuncia_transito))
  end

  test "should destroy denuncia_transito" do
    assert_difference('DenunciaTransito.count', -1) do
      delete :destroy, id: @denuncia_transito
    end

    assert_redirected_to denuncia_transitos_path
  end
end
