require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_url
    assert_response :success
  end

  test "should get fitness_classes" do
    get fitness_classes_url
    assert_response :success
  end

end
