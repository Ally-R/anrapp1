require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Ally's XWP Review"
  end

  test "should get root" do
    get root_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get episodes" do
    get static_pages_episodes_url
    assert_response :success
    assert_select "title", "Episodes | #{@base_title}"
  end

  test "should get characters" do
    get static_pages_characters_url
    assert_response :success
    assert_select "title", "Characters | #{@base_title}"
  end

end
