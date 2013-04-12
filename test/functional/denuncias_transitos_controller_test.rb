require 'test_helper'

class DenunciasTransitosControllerTest < ActionController::TestCase
  setup do
    @denuncias_transito = denuncias_transitos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:denuncias_transitos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create denuncias_transito" do
    assert_difference('DenunciasTransito.count') do
      post :create, denuncias_transito: { apMaterno: @denuncias_transito.apMaterno, apPaterno: @denuncias_transito.apPaterno, descripcion: @denuncias_transito.descripcion, fecha: @denuncias_transito.fecha, hora: @denuncias_transito.hora, lugarHecho: @denuncias_transito.lugarHecho, municipio: @denuncias_transito.municipio, numOficial: @denuncias_transito.numOficial, numPatrulla: @denuncias_transito.numPatrulla }
    end

    assert_redirected_to denuncias_transito_path(assigns(:denuncias_transito))
  end

  test "should show denuncias_transito" do
    get :show, id: @denuncias_transito
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @denuncias_transito
    assert_response :success
  end

  test "should update denuncias_transito" do
    put :update, id: @denuncias_transito, denuncias_transito: { apMaterno: @denuncias_transito.apMaterno, apPaterno: @denuncias_transito.apPaterno, descripcion: @denuncias_transito.descripcion, fecha: @denuncias_transito.fecha, hora: @denuncias_transito.hora, lugarHecho: @denuncias_transito.lugarHecho, municipio: @denuncias_transito.municipio, numOficial: @denuncias_transito.numOficial, numPatrulla: @denuncias_transito.numPatrulla }
    assert_redirected_to denuncias_transito_path(assigns(:denuncias_transito))
  end

  test "should destroy denuncias_transito" do
    assert_difference('DenunciasTransito.count', -1) do
      delete :destroy, id: @denuncias_transito
    end

    assert_redirected_to denuncias_transitos_path
  end
end
