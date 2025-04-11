require "test_helper"

class Client::TicketMessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get client_ticket_messages_create_url
    assert_response :success
  end
end
