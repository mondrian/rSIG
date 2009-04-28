require 'test_helper'

class TransportadorasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transportadoras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transportadora" do
    assert_difference('Transportadora.count') do
      post :create, :transportadora => { }
    end

    assert_redirected_to transportadora_path(assigns(:transportadora))
  end

  test "should show transportadora" do
    get :show, :id => transportadoras(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => transportadoras(:one).to_param
    assert_response :success
  end

  test "should update transportadora" do
    put :update, :id => transportadoras(:one).to_param, :transportadora => { }
    assert_redirected_to transportadora_path(assigns(:transportadora))
  end

  test "should destroy transportadora" do
    assert_difference('Transportadora.count', -1) do
      delete :destroy, :id => transportadoras(:one).to_param
    end

    assert_redirected_to transportadoras_path
  end
end
