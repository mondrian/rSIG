require 'test_helper'

class PlanosdepagamentoControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:planosdepagamento)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create planodepagamento" do
    assert_difference('Planodepagamento.count') do
      post :create, :planodepagamento => { }
    end

    assert_redirected_to planodepagamento_path(assigns(:planodepagamento))
  end

  test "should show planodepagamento" do
    get :show, :id => planosdepagamento(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => planosdepagamento(:one).to_param
    assert_response :success
  end

  test "should update planodepagamento" do
    put :update, :id => planosdepagamento(:one).to_param, :planodepagamento => { }
    assert_redirected_to planodepagamento_path(assigns(:planodepagamento))
  end

  test "should destroy planodepagamento" do
    assert_difference('Planodepagamento.count', -1) do
      delete :destroy, :id => planosdepagamento(:one).to_param
    end

    assert_redirected_to planosdepagamento_path
  end
end
