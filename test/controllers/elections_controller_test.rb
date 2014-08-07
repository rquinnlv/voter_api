require 'test_helper'

class ElectionsControllerTest < ActionController::TestCase
  setup do
    @election = elections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:elections)
  end

  test "should create election" do
    assert_difference('Election.count') do
      post :create, election: { date: @election.date, location: @election.location }
    end

    assert_response 201
  end

  test "should show election" do
    get :show, id: @election
    assert_response :success
  end

  test "should update election" do
    put :update, id: @election, election: { date: @election.date, location: @election.location }
    assert_response 204
  end

  test "should destroy election" do
    assert_difference('Election.count', -1) do
      delete :destroy, id: @election
    end

    assert_response 204
  end
end
