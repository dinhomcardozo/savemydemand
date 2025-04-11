require "test_helper"

class Provider::TicketMessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get provider_ticket_messages_create_url
    assert_response :success
  end
end
