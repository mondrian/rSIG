require 'test_helper'

class FuncionariosControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:funcionarios)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_funcionario
    assert_difference('Funcionario.count') do
      post :create, :funcionario => { }
    end

    assert_redirected_to funcionario_path(assigns(:funcionario))
  end

  def test_should_show_funcionario
    get :show, :id => funcionarios(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => funcionarios(:one).id
    assert_response :success
  end

  def test_should_update_funcionario
    put :update, :id => funcionarios(:one).id, :funcionario => { }
    assert_redirected_to funcionario_path(assigns(:funcionario))
  end

  def test_should_destroy_funcionario
    assert_difference('Funcionario.count', -1) do
      delete :destroy, :id => funcionarios(:one).id
    end

    assert_redirected_to funcionarios_path
  end
end
