require 'test_helper'

class OrderclassesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get orderclasses_index_url
    assert_response :success
  end

  test "should get show" do
    get orderclasses_show_url
    assert_response :success
  end

  test "should get new" do
    get orderclasses_new_url
    assert_response :success
  end

  test "should get edit" do
    get orderclasses_edit_url
    assert_response :success
  end

end
