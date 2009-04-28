require 'test_helper'

class NotasfiscaisControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notasfiscais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notafiscal" do
    assert_difference('Notafiscal.count') do
      post :create, :notafiscal => { }
    end

    assert_redirected_to notafiscal_path(assigns(:notafiscal))
  end

  test "should show notafiscal" do
    get :show, :id => notasfiscais(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => notasfiscais(:one).to_param
    assert_response :success
  end

  test "should update notafiscal" do
    put :update, :id => notasfiscais(:one).to_param, :notafiscal => { }
    assert_redirected_to notafiscal_path(assigns(:notafiscal))
  end

  test "should destroy notafiscal" do
    assert_difference('Notafiscal.count', -1) do
      delete :destroy, :id => notasfiscais(:one).to_param
    end

    assert_redirected_to notasfiscais_path
  end
end
