require 'test_helper'

class MinutasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:minutas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create minuta" do
    assert_difference('Minuta.count') do
      post :create, :minuta => { }
    end

    assert_redirected_to minuta_path(assigns(:minuta))
  end

  test "should show minuta" do
    get :show, :id => minutas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => minutas(:one).to_param
    assert_response :success
  end

  test "should update minuta" do
    put :update, :id => minutas(:one).to_param, :minuta => { }
    assert_redirected_to minuta_path(assigns(:minuta))
  end

  test "should destroy minuta" do
    assert_difference('Minuta.count', -1) do
      delete :destroy, :id => minutas(:one).to_param
    end

    assert_redirected_to minutas_path
  end
end
