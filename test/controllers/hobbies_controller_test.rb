require 'test_helper'

class HobbiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get hobbies_new_url
    assert_response :success
  end

end
