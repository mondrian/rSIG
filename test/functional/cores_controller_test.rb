require 'test_helper'

class CoresControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:cores)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_cor
    assert_difference('Cor.count') do
      post :create, :cor => { }
    end

    assert_redirected_to cor_path(assigns(:cor))
  end

  def test_should_show_cor
    get :show, :id => cores(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => cores(:one).id
    assert_response :success
  end

  def test_should_update_cor
    put :update, :id => cores(:one).id, :cor => { }
    assert_redirected_to cor_path(assigns(:cor))
  end

  def test_should_destroy_cor
    assert_difference('Cor.count', -1) do
      delete :destroy, :id => cores(:one).id
    end

    assert_redirected_to cores_path
  end
end
