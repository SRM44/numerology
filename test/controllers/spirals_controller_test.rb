require 'test_helper'

class SpiralsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get spirals_show_url
    assert_response :success
  end

end
