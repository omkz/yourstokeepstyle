require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get collection" do
    get :collection
    assert_response :success
  end

  test "should get conscience" do
    get :conscience
    assert_response :success
  end

  test "should get stockists" do
    get :stockists
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
