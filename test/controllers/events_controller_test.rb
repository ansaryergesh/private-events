require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get events_create_url
    assert_response :success
  end

end
