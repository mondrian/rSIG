require 'test_helper'

class ItensMinutasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:itens_minutas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create itens_minuta" do
    assert_difference('ItensMinuta.count') do
      post :create, :itens_minuta => { }
    end

    assert_redirected_to itens_minuta_path(assigns(:itens_minuta))
  end

  test "should show itens_minuta" do
    get :show, :id => itens_minutas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => itens_minutas(:one).to_param
    assert_response :success
  end

  test "should update itens_minuta" do
    put :update, :id => itens_minutas(:one).to_param, :itens_minuta => { }
    assert_redirected_to itens_minuta_path(assigns(:itens_minuta))
  end

  test "should destroy itens_minuta" do
    assert_difference('ItensMinuta.count', -1) do
      delete :destroy, :id => itens_minutas(:one).to_param
    end

    assert_redirected_to itens_minutas_path
  end
end
