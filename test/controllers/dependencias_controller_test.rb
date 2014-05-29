require 'test_helper'

class DependenciasControllerTest < ActionController::TestCase
  test "should get filtroPartidos" do
    get :filtroPartidos
    assert_response :success
  end

end
