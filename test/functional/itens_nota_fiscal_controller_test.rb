require 'test_helper'

class ItensNotaFiscalControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:itens_nota_fiscal)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_nota_fiscal" do
    assert_difference('ItemNotaFiscal.count') do
      post :create, :item_nota_fiscal => { }
    end

    assert_redirected_to item_nota_fiscal_path(assigns(:item_nota_fiscal))
  end

  test "should show item_nota_fiscal" do
    get :show, :id => itens_nota_fiscal(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => itens_nota_fiscal(:one).to_param
    assert_response :success
  end

  test "should update item_nota_fiscal" do
    put :update, :id => itens_nota_fiscal(:one).to_param, :item_nota_fiscal => { }
    assert_redirected_to item_nota_fiscal_path(assigns(:item_nota_fiscal))
  end

  test "should destroy item_nota_fiscal" do
    assert_difference('ItemNotaFiscal.count', -1) do
      delete :destroy, :id => itens_nota_fiscal(:one).to_param
    end

    assert_redirected_to itens_nota_fiscal_path
  end
end
