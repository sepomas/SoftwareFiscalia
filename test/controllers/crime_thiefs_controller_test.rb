require 'test_helper'

class CrimeThiefsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crime_thief = crime_thiefs(:one)
  end

  test "should get index" do
    get crime_thiefs_url
    assert_response :success
  end

  test "should get new" do
    get new_crime_thief_url
    assert_response :success
  end

  test "should create crime_thief" do
    assert_difference('CrimeThief.count') do
      post crime_thiefs_url, params: { crime_thief: {  } }
    end

    assert_redirected_to crime_thief_url(CrimeThief.last)
  end

  test "should show crime_thief" do
    get crime_thief_url(@crime_thief)
    assert_response :success
  end

  test "should get edit" do
    get edit_crime_thief_url(@crime_thief)
    assert_response :success
  end

  test "should update crime_thief" do
    patch crime_thief_url(@crime_thief), params: { crime_thief: {  } }
    assert_redirected_to crime_thief_url(@crime_thief)
  end

  test "should destroy crime_thief" do
    assert_difference('CrimeThief.count', -1) do
      delete crime_thief_url(@crime_thief)
    end

    assert_redirected_to crime_thiefs_url
  end
end
