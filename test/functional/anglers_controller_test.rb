require 'test_helper'

class AnglersControllerTest < ActionController::TestCase
  setup do
    @angler = anglers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anglers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create angler" do
    assert_difference('Angler.count') do
      post :create, angler: { boat_num: @angler.boat_num, name: @angler.name }
    end

    assert_redirected_to angler_path(assigns(:angler))
  end

  test "should show angler" do
    get :show, id: @angler
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @angler
    assert_response :success
  end

  test "should update angler" do
    put :update, id: @angler, angler: { boat_num: @angler.boat_num, name: @angler.name }
    assert_redirected_to angler_path(assigns(:angler))
  end

  test "should destroy angler" do
    assert_difference('Angler.count', -1) do
      delete :destroy, id: @angler
    end

    assert_redirected_to anglers_path
  end
end
