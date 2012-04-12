require 'test_helper'

class MyfinControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
