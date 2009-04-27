require 'test_helper'

class ItensnotasfiscaisControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:itensnotasfiscais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create itemnotafiscal" do
    assert_difference('Itemnotafiscal.count') do
      post :create, :itemnotafiscal => { }
    end

    assert_redirected_to itemnotafiscal_path(assigns(:itemnotafiscal))
  end

  test "should show itemnotafiscal" do
    get :show, :id => itensnotasfiscais(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => itensnotasfiscais(:one).to_param
    assert_response :success
  end

  test "should update itemnotafiscal" do
    put :update, :id => itensnotasfiscais(:one).to_param, :itemnotafiscal => { }
    assert_redirected_to itemnotafiscal_path(assigns(:itemnotafiscal))
  end

  test "should destroy itemnotafiscal" do
    assert_difference('Itemnotafiscal.count', -1) do
      delete :destroy, :id => itensnotasfiscais(:one).to_param
    end

    assert_redirected_to itensnotasfiscais_path
  end
end
