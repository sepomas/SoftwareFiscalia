require 'test_helper'

class ThiefsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thief = thiefs(:one)
  end

  test "should get index" do
    get thiefs_url
    assert_response :success
  end

  test "should get new" do
    get new_thief_url
    assert_response :success
  end

  test "should create thief" do
    assert_difference('Thief.count') do
      post thiefs_url, params: { thief: {  } }
    end

    assert_redirected_to thief_url(Thief.last)
  end

  test "should show thief" do
    get thief_url(@thief)
    assert_response :success
  end

  test "should get edit" do
    get edit_thief_url(@thief)
    assert_response :success
  end

  test "should update thief" do
    patch thief_url(@thief), params: { thief: {  } }
    assert_redirected_to thief_url(@thief)
  end

  test "should destroy thief" do
    assert_difference('Thief.count', -1) do
      delete thief_url(@thief)
    end

    assert_redirected_to thiefs_url
  end
end
