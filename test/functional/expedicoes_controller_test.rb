require 'test_helper'

class ExpedicoesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expedicoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expedicao" do
    assert_difference('Expedicao.count') do
      post :create, :expedicao => { }
    end

    assert_redirected_to expedicao_path(assigns(:expedicao))
  end

  test "should show expedicao" do
    get :show, :id => expedicoes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => expedicoes(:one).to_param
    assert_response :success
  end

  test "should update expedicao" do
    put :update, :id => expedicoes(:one).to_param, :expedicao => { }
    assert_redirected_to expedicao_path(assigns(:expedicao))
  end

  test "should destroy expedicao" do
    assert_difference('Expedicao.count', -1) do
      delete :destroy, :id => expedicoes(:one).to_param
    end

    assert_redirected_to expedicoes_path
  end
end
