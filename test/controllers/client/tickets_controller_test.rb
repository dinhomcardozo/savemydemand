require "test_helper"

class Client::TicketsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get client_tickets_index_url
    assert_response :success
  end

  test "should get show" do
    get client_tickets_show_url
    assert_response :success
  end

  test "should get new" do
    get client_tickets_new_url
    assert_response :success
  end

  test "should get create" do
    get client_tickets_create_url
    assert_response :success
  end
end
