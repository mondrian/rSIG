require 'test_helper'

class RegiaosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regiaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create regiao" do
    assert_difference('Regiao.count') do
      post :create, :regiao => { }
    end

    assert_redirected_to regiao_path(assigns(:regiao))
  end

  test "should show regiao" do
    get :show, :id => regiaos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => regiaos(:one).to_param
    assert_response :success
  end

  test "should update regiao" do
    put :update, :id => regiaos(:one).to_param, :regiao => { }
    assert_redirected_to regiao_path(assigns(:regiao))
  end

  test "should destroy regiao" do
    assert_difference('Regiao.count', -1) do
      delete :destroy, :id => regiaos(:one).to_param
    end

    assert_redirected_to regiaos_path
  end
end
