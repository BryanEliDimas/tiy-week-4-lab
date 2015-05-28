require 'test_helper'

class ShowControllerTest < ActionController::TestCase
  test "should get blogs" do
    get :blogs
    assert_response :success
  end

end
