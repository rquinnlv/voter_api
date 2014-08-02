require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { address1: @user.address1, address2: @user.address2, city: @user.city, state: @user.state, zipcode: @user.zipcode }
    end

    assert_response 201
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { address1: @user.address1, address2: @user.address2, city: @user.city, state: @user.state, zipcode: @user.zipcode }
    assert_response 204
  end

  # test "should destroy user" do
  #   assert_difference('User.count', -1) do
  #     delete :destroy, id: @user
  #   end

  #   assert_response 204
  # end
end
