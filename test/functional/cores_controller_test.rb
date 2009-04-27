require 'test_helper'

class CoresControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cor" do
    assert_difference('Cor.count') do
      post :create, :cor => { }
    end

    assert_redirected_to cor_path(assigns(:cor))
  end

  test "should show cor" do
    get :show, :id => cores(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => cores(:one).to_param
    assert_response :success
  end

  test "should update cor" do
    put :update, :id => cores(:one).to_param, :cor => { }
    assert_redirected_to cor_path(assigns(:cor))
  end

  test "should destroy cor" do
    assert_difference('Cor.count', -1) do
      delete :destroy, :id => cores(:one).to_param
    end

    assert_redirected_to cores_path
  end
end
