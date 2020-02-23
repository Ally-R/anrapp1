require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Ally's XWP Review"
  end

  test "should get root" do
    get root_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get episodes" do
    get episodes_path
    assert_response :success
    assert_select "title", "Episodes | #{@base_title}"
  end

  test "should get characters" do
    get characters_path
    assert_response :success
    assert_select "title", "Characters | #{@base_title}"
  end

end
