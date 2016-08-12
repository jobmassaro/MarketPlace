require 'test_helper'

class CreateControllerTest < ActionController::TestCase
  test "should get pickup" do
    get :pickup
    assert_response :success
  end

end
