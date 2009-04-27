require 'test_helper'

class PedidosControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:pedidos)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_pedido
    assert_difference('Pedido.count') do
      post :create, :pedido => { }
    end

    assert_redirected_to pedido_path(assigns(:pedido))
  end

  def test_should_show_pedido
    get :show, :id => pedidos(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => pedidos(:one).id
    assert_response :success
  end

  def test_should_update_pedido
    put :update, :id => pedidos(:one).id, :pedido => { }
    assert_redirected_to pedido_path(assigns(:pedido))
  end

  def test_should_destroy_pedido
    assert_difference('Pedido.count', -1) do
      delete :destroy, :id => pedidos(:one).id
    end

    assert_redirected_to pedidos_path
  end
end
