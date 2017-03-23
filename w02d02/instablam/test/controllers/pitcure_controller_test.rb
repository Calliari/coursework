require 'test_helper'

class PitcureControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pitcure_index_url
    assert_response :success
  end

end
