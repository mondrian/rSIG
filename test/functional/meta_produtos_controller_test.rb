require 'test_helper'

class MetaProdutosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meta_produtos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meta_produto" do
    assert_difference('MetaProduto.count') do
      post :create, :meta_produto => { }
    end

    assert_redirected_to meta_produto_path(assigns(:meta_produto))
  end

  test "should show meta_produto" do
    get :show, :id => meta_produtos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => meta_produtos(:one).to_param
    assert_response :success
  end

  test "should update meta_produto" do
    put :update, :id => meta_produtos(:one).to_param, :meta_produto => { }
    assert_redirected_to meta_produto_path(assigns(:meta_produto))
  end

  test "should destroy meta_produto" do
    assert_difference('MetaProduto.count', -1) do
      delete :destroy, :id => meta_produtos(:one).to_param
    end

    assert_redirected_to meta_produtos_path
  end
end
