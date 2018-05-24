require 'test_helper'

class DraftListControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get draft_list_list_url
    assert_response :success
  end

end
