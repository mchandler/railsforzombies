require 'test_helper'

class NewZombiesControllerTest < ActionController::TestCase
  setup do
    @new_zombie = new_zombies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_zombies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_zombie" do
    assert_difference('NewZombie.count') do
      post :create, new_zombie: @new_zombie.attributes
    end

    assert_redirected_to new_zombie_path(assigns(:new_zombie))
  end

  test "should show new_zombie" do
    get :show, id: @new_zombie.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @new_zombie.to_param
    assert_response :success
  end

  test "should update new_zombie" do
    put :update, id: @new_zombie.to_param, new_zombie: @new_zombie.attributes
    assert_redirected_to new_zombie_path(assigns(:new_zombie))
  end

  test "should destroy new_zombie" do
    assert_difference('NewZombie.count', -1) do
      delete :destroy, id: @new_zombie.to_param
    end

    assert_redirected_to new_zombies_path
  end
end
