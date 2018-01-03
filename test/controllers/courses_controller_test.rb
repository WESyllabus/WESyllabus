require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get upload_path
    assert_response :success
  end

end
