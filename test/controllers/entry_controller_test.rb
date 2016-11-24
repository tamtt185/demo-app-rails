require 'test_helper'

class EntryControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get entry_new_url
    assert_response :success
  end

  test "should get create" do
    get entry_create_url
    assert_response :success
  end

  test "should get show" do
    get entry_show_url
    assert_response :success
  end

  test "should get update" do
    get entry_update_url
    assert_response :success
  end

  test "should get destroy" do
    get entry_destroy_url
    assert_response :success
  end

end
