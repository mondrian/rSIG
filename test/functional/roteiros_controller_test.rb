require 'test_helper'

class RoteirosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:roteiros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create roteiro" do
    assert_difference('Roteiro.count') do
      post :create, :roteiro => { }
    end

    assert_redirected_to roteiro_path(assigns(:roteiro))
  end

  test "should show roteiro" do
    get :show, :id => roteiros(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => roteiros(:one).to_param
    assert_response :success
  end

  test "should update roteiro" do
    put :update, :id => roteiros(:one).to_param, :roteiro => { }
    assert_redirected_to roteiro_path(assigns(:roteiro))
  end

  test "should destroy roteiro" do
    assert_difference('Roteiro.count', -1) do
      delete :destroy, :id => roteiros(:one).to_param
    end

    assert_redirected_to roteiros_path
  end
end
