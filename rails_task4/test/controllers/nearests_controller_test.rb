require 'test_helper'

class NearestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nearest = nearests(:one)
  end

  test "should get index" do
    get nearests_url
    assert_response :success
  end

  test "should get new" do
    get new_nearest_url
    assert_response :success
  end

  test "should create nearest" do
    assert_difference('Nearest.count') do
      post nearests_url, params: { nearest: { route_name: @nearest.route_name, station: @nearest.station, time: @nearest.time } }
    end

    assert_redirected_to nearest_url(Nearest.last)
  end

  test "should show nearest" do
    get nearest_url(@nearest)
    assert_response :success
  end

  test "should get edit" do
    get edit_nearest_url(@nearest)
    assert_response :success
  end

  test "should update nearest" do
    patch nearest_url(@nearest), params: { nearest: { route_name: @nearest.route_name, station: @nearest.station, time: @nearest.time } }
    assert_redirected_to nearest_url(@nearest)
  end

  test "should destroy nearest" do
    assert_difference('Nearest.count', -1) do
      delete nearest_url(@nearest)
    end

    assert_redirected_to nearests_url
  end
end
