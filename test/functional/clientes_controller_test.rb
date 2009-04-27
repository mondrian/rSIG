require 'test_helper'

class ClientesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:clientes)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_cliente
    assert_difference('Cliente.count') do
      post :create, :cliente => { }
    end

    assert_redirected_to cliente_path(assigns(:cliente))
  end

  def test_should_show_cliente
    get :show, :id => clientes(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => clientes(:one).id
    assert_response :success
  end

  def test_should_update_cliente
    put :update, :id => clientes(:one).id, :cliente => { }
    assert_redirected_to cliente_path(assigns(:cliente))
  end

  def test_should_destroy_cliente
    assert_difference('Cliente.count', -1) do
      delete :destroy, :id => clientes(:one).id
    end

    assert_redirected_to clientes_path
  end
end
