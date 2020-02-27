require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "root layout links" do
    get root_path
    assert_template 'static_pages/about'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", episodes_path
    assert_select "a[href=?]", characters_path
    assert_select "a[href=?]", quote_path, count: 2
    assert_select "a[href=?]", contact_path, count: 2
  end

  test "episodes layout links" do
    get episodes_path
    assert_template 'static_pages/episodes'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", episodes_path
    assert_select "a[href=?]", characters_path
    assert_select "a[href=?]", quote_path
    assert_select "a[href=?]", contact_path, count: 2
  end

  test "characters layout links" do
    get characters_path
    assert_template 'static_pages/characters'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", episodes_path
    assert_select "a[href=?]", characters_path
    assert_select "a[href=?]", quote_path
    assert_select "a[href=?]", contact_path, count: 2
  end

  test "quote layout links" do
    get quote_path
    assert_template 'static_pages/quote'
    assert_select "a[href=?]", root_path, count: 3
    assert_select "a[href=?]", episodes_path
    assert_select "a[href=?]", characters_path
    assert_select "a[href=?]", quote_path, count: 2
    assert_select "a[href=?]", contact_path, count: 2
  end

  test "contact layout links" do
    get contact_path
    assert_template 'static_pages/contact'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", episodes_path
    assert_select "a[href=?]", characters_path
    assert_select "a[href=?]", quote_path
    assert_select "a[href=?]", contact_path, count: 2
  end
end
