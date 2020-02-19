require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get campus" do
    get static_pages_campus_url
    assert_response :success
  end

  test "should get town" do
    get static_pages_town_url
    assert_response :success
  end

end
