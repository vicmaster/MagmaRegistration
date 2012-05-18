require 'test_helper'

class RegistrationsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get success" do
    get :success
    assert_response :success
  end

end
