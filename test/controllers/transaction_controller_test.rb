require 'test_helper'

class TransactionControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get pickup" do
    get :pickup
    assert_response :success
  end

end
