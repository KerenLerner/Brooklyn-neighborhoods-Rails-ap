require 'test_helper'

class SeekersControllerTest < ActionController::TestCase
  setup do
    @seeker = seekers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seekers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seeker" do
    assert_difference('Seeker.count') do
      post :create, seeker: { seeker_activities: @seeker.seeker_activities, seeker_architecture: @seeker.seeker_architecture, seeker_commute: @seeker.seeker_commute, seeker_name: @seeker.seeker_name, seeker_park: @seeker.seeker_park, seeker_rent: @seeker.seeker_rent }
    end

    assert_redirected_to seeker_path(assigns(:seeker))
  end

  test "should show seeker" do
    get :show, id: @seeker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seeker
    assert_response :success
  end

  test "should update seeker" do
    patch :update, id: @seeker, seeker: { seeker_activities: @seeker.seeker_activities, seeker_architecture: @seeker.seeker_architecture, seeker_commute: @seeker.seeker_commute, seeker_name: @seeker.seeker_name, seeker_park: @seeker.seeker_park, seeker_rent: @seeker.seeker_rent }
    assert_redirected_to seeker_path(assigns(:seeker))
  end

  test "should destroy seeker" do
    assert_difference('Seeker.count', -1) do
      delete :destroy, id: @seeker
    end

    assert_redirected_to seekers_path
  end
end
