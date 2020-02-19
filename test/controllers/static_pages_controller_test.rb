require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

  test "should get episodes" do
    get static_pages_episodes_url
    assert_response :success
  end

  test "should get characters" do
    get static_pages_characters_url
    assert_response :success
  end

end
