require 'test_helper'

class ContactesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get contactes_new_url
    assert_response :success
  end

end
