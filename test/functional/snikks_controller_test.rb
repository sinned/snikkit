require 'test_helper'

class SnikksControllerTest < ActionController::TestCase
  setup do
    @snikk = snikks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:snikks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create snikk" do
    assert_difference('Snikk.count') do
      post :create, :snikk => @snikk.attributes
    end

    assert_redirected_to snikk_path(assigns(:snikk))
  end

  test "should show snikk" do
    get :show, :id => @snikk.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @snikk.to_param
    assert_response :success
  end

  test "should update snikk" do
    put :update, :id => @snikk.to_param, :snikk => @snikk.attributes
    assert_redirected_to snikk_path(assigns(:snikk))
  end

  test "should destroy snikk" do
    assert_difference('Snikk.count', -1) do
      delete :destroy, :id => @snikk.to_param
    end

    assert_redirected_to snikks_path
  end
end
